// ignore_for_file: avoid_print, deprecated_member_use, use_build_context_synchronously

import 'package:final_app/ui/privacy.dart';
// import 'package:final_app/ui/questions.dart';
import 'package:final_app/ui/terms.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_app/ui/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profile extends StatefulWidget {
  final String username;
  final String email;

  const Profile({Key? key, required this.username, required this.email})
      : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isToggled = false;
  late String username;
  late String email;
  bool isEditingUsername = false;
  // bool isEditingEmail = false;
  final TextEditingController usernameController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the fields from widget's fields
    username = widget.username;
    email = widget.email;
    usernameController.text = username;
    // emailController.text = email;
  }

  Future<void> updateUserProfile() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        // Update the username in Firestore
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .update({
          'username': usernameController.text,
        });

        setState(() {
          username = usernameController.text;
          isEditingUsername = false;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully!')),
        );
      } catch (e) {
        print('Failed to update profile: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update profile: $e')),
        );
      }
    }
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
                          "Profile",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // user details
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    // left: 5.0,
                                    // right: 15.0,
                                    top: 10.0,
                                    bottom: 12.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          if (isEditingUsername)
                                            Expanded(
                                              child: TextField(
                                                controller: usernameController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Username',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            )
                                          else
                                            Expanded(
                                              child: Text(
                                                "User Name: $username",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromARGB(
                                                      255, 127, 171, 207),
                                                ),
                                              ),
                                            ),
                                          // const SizedBox(width: 5),
                                          IconButton(
                                            icon: const Icon(Icons.create,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                isEditingUsername = true;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Email: $email",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 127, 171, 207),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // const SizedBox(height: 15),
                                      // const Align(
                                      //   alignment: Alignment.centerLeft,
                                      //   child: Text(
                                      //     "Password : ",
                                      //     style: TextStyle(
                                      //       fontSize: 18,
                                      //       color: Color.fromARGB(
                                      //           255, 127, 171, 207),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                          // border: Border.all(color: Colors.blue, width: 1),
                          // color: Colors.lightBlueAccent,
                        ),
                        child: TextButton(
                          onPressed: updateUserProfile,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 90.0),
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // 2nd half of the page
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    // left: 5.0,
                                    // right: 15.0,
                                    top: 10.0,
                                    bottom: 12.0,
                                  ),
                                  child: Column(
                                    children: [
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Settings",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Notifications",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 127, 171, 207),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 141),
                                          // the button
                                          Switch(
                                            value: isToggled,
                                            onChanged: (value) {
                                              setState(() {
                                                isToggled = value;
                                              });
                                            },
                                            activeColor: Colors.blue,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Terms()),
                                          );
                                        },
                                        child: const Row(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Terms and Conditions ",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 127, 171, 207),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 100),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Privacy()),
                                          );
                                        },
                                        child: const Row(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Privacy policy ",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 127, 171, 207),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 166),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
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

                    const SizedBox(height: 20),
                    // log out button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut().then((value) {
                            print("Signed Out");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          });
                        },
                        child: const Text('Logout'),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              // const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
