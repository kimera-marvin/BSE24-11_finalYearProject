// ignore_for_file: avoid_print

import 'package:final_app/ui/privacy.dart';
import 'package:final_app/ui/questions.dart';
import 'package:final_app/ui/terms.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_app/ui/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: SingleChildScrollView(
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
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
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
                                child: const Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "User Name : ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 127, 171, 207),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "First Name : ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 127, 171, 207),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Last Name : ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 127, 171, 207),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Email Address : ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 127, 171, 207),
                                        ),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Questions()),
                          );
                        },
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
            // const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
