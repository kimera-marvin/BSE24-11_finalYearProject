// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article4 extends StatefulWidget {
  const Article4({super.key});

  @override
  State<Article4> createState() => _Article4State();
}

class _Article4State extends State<Article4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 4",
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
