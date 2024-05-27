// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article3 extends StatefulWidget {
  const Article3({super.key});

  @override
  State<Article3> createState() => _Article3State();
}

class _Article3State extends State<Article3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 3",
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
