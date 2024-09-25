// ignore_for_file: library_private_types_in_public_api

import 'package:final_app/ui/login.dart';
import 'package:flutter/material.dart';
import 'dart:async'; // Import the timer package

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    // Start the timer as soon as the splash screen is loaded
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
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
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 200,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/IMG-20240809-WA0009.jpg',
                      width: 300,
                      height: 280,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'AgriLife',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Every Coffee Bean Matters',
                      style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
