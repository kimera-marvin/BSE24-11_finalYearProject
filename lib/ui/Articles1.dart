// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Articles1 extends StatefulWidget {
  const Articles1({super.key});

  @override
  State<Articles1> createState() => _Articles1State();
}

class _Articles1State extends State<Articles1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 55, 114, 167),
      ),
    );
  }
}
