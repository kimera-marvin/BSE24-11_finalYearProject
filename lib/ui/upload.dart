import 'dart:typed_data';

// import 'package:final_app/ui/results.dart';
import 'package:final_app/ui/test.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class Upload extends StatefulWidget {
  final Uint8List? image;
  const Upload({Key? key, this.image}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  String? userEmail;

  @override
  void initState() {
    super.initState();
    fetchUserEmail();
  }

  void fetchUserEmail() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userEmail = user.email;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Upload",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 55, 114, 167),
      ),
      // backgroundColor: Colors.blue.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      // right: 200.0,
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: widget.image != null
                        ? CircleAvatar(
                            radius: 50,
                            backgroundImage: MemoryImage(widget.image!),
                          )
                        : const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/article1.png"),
                          ),
                  ),
                  const SizedBox(height: 8),
                  // const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: 'Age',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: _genderController,
                          decoration: const InputDecoration(
                            labelText: 'Gender',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  // predict button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        if (widget.image != null && userEmail != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Test(
                                image: widget.image,
                                name: _nameController.text,
                                age: int.tryParse(_ageController.text) ?? 0,
                                gender: _genderController.text,
                                user_email: userEmail!, // Pass the email
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1.0),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    // left: 5.0,
                                    // right: 15.0,
                                    top: 10.0,
                                    bottom: 12.0,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Predict",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
