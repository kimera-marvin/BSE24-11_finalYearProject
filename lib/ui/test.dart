// ignore_for_file: avoid_print, non_constant_identifier_names, sort_child_properties_last

import 'dart:convert';
import 'dart:typed_data';

import 'package:final_app/ui/history.dart';
import 'package:final_app/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:final_app/widgets/database_constants.dart';

class Test extends StatefulWidget {
  final Uint8List? image;
  final String name;
  final int age;
  final String gender;
  final String user_email;
  final int currentIndex;

  const Test({
    Key? key,
    this.image,
    required this.name,
    required this.age,
    required this.gender,
    required this.user_email,
    this.currentIndex = 3,
  }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late Future<Map<String, String>> _recordsFuture;
  late String uname;

  @override
  void initState() {
    super.initState();
    _recordsFuture = getRecords(widget.image, widget.name, widget.age,
        widget.gender, widget.user_email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Results Screen",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 55, 114, 167),
        leading: Container(),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
            ),
            child: SingleChildScrollView(
              child: FutureBuilder<Map<String, String>>(
                future: _recordsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    final data = snapshot.data!;
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            widget.image != null
                                ? CircleAvatar(
                                    radius: 100,
                                    backgroundImage: MemoryImage(widget.image!),
                                  )
                                : const CircleAvatar(
                                    radius: 100,
                                    backgroundImage: AssetImage(
                                        "assets/images/article1.png"),
                                  ),
                            const SizedBox(height: 16),
                            Text('Name: ${widget.name}',
                                style: const TextStyle(fontSize: 20)),
                            const SizedBox(height: 8),
                            Text('Age: ${widget.age}',
                                style: const TextStyle(fontSize: 20)),
                            const SizedBox(height: 8),
                            Text('Gender: ${widget.gender}',
                                style: const TextStyle(fontSize: 20)),
                            const SizedBox(height: 16),
                            const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Further tests are recommended to confirm the diagnosis.",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Identified Pathogens/Abnormalities: ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              '${data['identified_pathogens']}',
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Result: ${data['result_predicted']}',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ScreenWithNavigationBar(
                                          child: History(
                                            username: "",
                                            userEmail: widget.user_email,
                                          ),
                                          currentIndex: 3,
                                          username: "",
                                          email: widget.user_email,
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 90.0),
                                    child: Text(
                                     'View History',
                                      style: TextStyle(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: Text('No data received'));
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<Map<String, String>> getRecords(Uint8List? image, String name, int age,
    String gender, String user_email) async {
  final client = OdooClient(DATABASE_URL);

  try {
    await client.authenticate(
        DATABASE_NAME, DATABASE_ACCESS_LOGIN, DATABASE_ACCESS_PASSWORD);
    var response = await client.callKw(
      {
        'model': 'patient.image',
        'method': 'action_create_custom',
        'args': [
          {
            "name": name,
            "age": age,
            "gender": gender,
            "user_email": user_email,
            "xray_image": base64Encode(image!),
          },
        ],
        'kwargs': {}
      },
    ).timeout(const Duration(seconds: 100));

    print("hello");
    print(response);
    print(user_email);

    // Ensure the response is a valid JSON string
    if (response != null && response is String) {
      final Map<String, dynamic> parsedResponse = jsonDecode(response);
      if (parsedResponse.containsKey('result_predicted') &&
          parsedResponse.containsKey('identified_pathogens')) {
        return {
          'result_predicted': parsedResponse['result_predicted'] as String,
          'identified_pathogens':
              parsedResponse['identified_pathogens'] as String,
        };
      } else {
        throw Exception('Required keys not found in response');
      }
    } else {
      throw Exception('Invalid response format');
    }
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack trace: $stack');
    return {
      'result_predicted': 'Error: $e',
      'identified_pathogens': 'Error: $e'
    }; // Return the error to be displayed in the UI
  }
}
