// ignore_for_file: prefer_final_fields, avoid_print, use_build_context_synchronously

import 'package:final_app/ui/home.dart';
import 'package:final_app/widgets/reusable_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _phoneNumberTextController = TextEditingController();
  TextEditingController _regionTextController = TextEditingController();
  TextEditingController _districtTextController = TextEditingController();
  TextEditingController _villageTextController = TextEditingController();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.brown,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                // const SizedBox(
                //   height: 20,
                // ),
                reusableTextField("Enter UserName", Icons.person_outline,
                    _userNameTextController, TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Telephone Number", Icons.phone,
                    _phoneNumberTextController, TextInputType.phone),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email Address", Icons.person_outline,
                    _emailTextController, TextInputType.emailAddress),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextField(
                    text: "Enter Password", //(6/ more characters)
                    icon: Icons.lock_outlined,
                    controller: _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Region", Icons.house_outlined,
                    _regionTextController, TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter District", Icons.house_outlined,
                    _districtTextController, TextInputType.text),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Village", Icons.house_outlined,
                    _villageTextController, TextInputType.text),
                const SizedBox(
                  height: 30,
                ),
                loginSignUpButton(context, false, () async {
                  // error message that appears when the password has less than 6 characters
                  if (_passwordTextController.text.length < 6) {
                    _showErrorDialog("Password must be at least 6 characters.");
                    return;
                  }

                  try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text,
                    );

                    // Store additional details in Firestore
                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(userCredential.user!.uid)
                        .set({
                      'username': _userNameTextController.text,
                      'phone': _phoneNumberTextController.text,
                      'email': _emailTextController.text,
                      'password': _passwordTextController.text,
                      'region': _regionTextController.text,
                      'district': _districtTextController.text,
                      'village': _villageTextController.text,
                    });

                    print("Created New Account");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(
                          username: _userNameTextController.text,
                          phone: _phoneNumberTextController.text,
                          email: _emailTextController.text,
                          region: _regionTextController.text,
                          district: _districtTextController.text,
                          village: _villageTextController.text,
                        ),
                      ),
                    );
                  } on FirebaseAuthException catch (e) {
                    // error message incase user enters an email that already exists in the firebase authentication
                    if (e.code == 'email-already-in-use') {
                      _showErrorDialog("Email is already in use.");
                    } else {
                      _showErrorDialog("Error: ${e.message}");
                    }
                  } catch (error) {
                    _showErrorDialog("An unknown error occurred.");
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
