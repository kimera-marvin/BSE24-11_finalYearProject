// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article9 extends StatefulWidget {
  const Article9({super.key});

  @override
  State<Article9> createState() => _Article9State();
}

class _Article9State extends State<Article9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 9",
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
