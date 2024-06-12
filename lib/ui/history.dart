// ignore_for_file: avoid_print

import 'dart:convert';

// import 'package:final_app/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:final_app/widgets/database_constants.dart';

class History extends StatefulWidget {
  final String username;
  final String userEmail;
  final int currentIndex;

  const History({
    Key? key,
    required this.username,
    required this.userEmail,
    this.currentIndex = 3,
  }) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  late Future<List<Map<String, dynamic>>> _historyDataFuture;
  // late String username;
  // late String email;

  @override
  void initState() {
    super.initState();
    _historyDataFuture = fetchHistoryData(widget.userEmail);
    // username = widget.username;
    // email = widget.userEmail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 55, 114, 167),
                  borderRadius: BorderRadius.zero,
                ),
                child: const Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 70.0,
                        bottom: 20.0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "History",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  // color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.zero,
                ),
                child: FutureBuilder<List<Map<String, dynamic>>>(
                  future: _historyDataFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text('No history found.'));
                    } else {
                      var historyData = snapshot.data!;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: historyData.length,
                        itemBuilder: (context, index) {
                          var record = historyData[index];
                          var imageBytes = base64Decode(record['xray_image']);
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: MemoryImage(imageBytes),
                                ),
                                title: Text(record['name']),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Age: ${record['age']}'),
                                    Text('Gender: ${record['gender']}'),
                                    Text(
                                        'Results: ${record['result_predicted']}'),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<List<Map<String, dynamic>>> fetchHistoryData(String userEmail) async {
  final client = OdooClient(DATABASE_URL);
  await client.authenticate(
      DATABASE_NAME, DATABASE_ACCESS_LOGIN, DATABASE_ACCESS_PASSWORD);

  try {
    var response = await client.callKw({
      'model': 'patient.image',
      'method': 'search_read',
      'args': [
        [
          ['user_email', '=', userEmail]
        ],
        ['name', 'age', 'gender', 'xray_image', "result_predicted"]
      ],
      'kwargs': {}
    }).timeout(const Duration(seconds: 100));

    if (response != null && response is List) {
      return response.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Invalid response format');
    }
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack trace: $stack');
    return [];
  }
}


