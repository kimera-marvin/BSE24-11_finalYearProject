// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, avoid_print, use_build_context_synchronously, unused_local_variable, unused_catch_clause

// import 'package:final_app/ui/home.dart';
import 'package:final_app/ui/home.dart';
import 'package:final_app/ui/signup.dart';
import 'package:final_app/widgets/reusable_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:final_app/ui/profile.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Invalid Credentials'),
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
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.blue,
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
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/OIP.jpg"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Email Address", Icons.person_outline,
                    _emailTextController, TextInputType.emailAddress),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextField(
                    text: "Enter Password",
                    icon: Icons.lock_outline,
                    controller: _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                loginSignUpButton(context, true, () async {
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text);

                    // Retrieve user data from Firestore
                    var userDoc = await FirebaseFirestore.instance
                        .collection('users')
                        .doc(userCredential.user!.uid)
                        .get();

                    if (userDoc.exists) {
                      var userData = userDoc.data();
                      String username = userData!['username'];
                      String email = userData['email'];

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Home(username: username, email: email),
                        ),
                      );
                    } else {
                      _showErrorDialog("User data not found.");
                    }
                  } on FirebaseAuthException catch (e) {
                    _showErrorDialog("Wrong Email/password.");
                  } catch (error) {
                    print("Error ${error.toString()}");
                    _showErrorDialog("An unknown error occurred.");
                  }
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUp()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
