// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article2 extends StatefulWidget {
  const Article2({super.key});

  @override
  State<Article2> createState() => _Article2State();
}

class _Article2State extends State<Article2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 2",
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
