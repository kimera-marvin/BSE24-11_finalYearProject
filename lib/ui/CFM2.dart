// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CFM2 extends StatefulWidget {
  const CFM2({super.key});

  @override
  State<CFM2> createState() => _CFM2State();
}

class _CFM2State extends State<CFM2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ARABICA COFFEE FARM ESTABLISHMENT AND FIELD MANAGEMENT PRACTICES
      appBar: AppBar(
        title: const Text(
          "Coffee Farm Management",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        leading: Container(),
      ),
      body: Container(
         width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        // child: SingleChildScrollView(

        // ),
      ),
    );
  }
}
