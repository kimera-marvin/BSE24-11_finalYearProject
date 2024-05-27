// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article10 extends StatefulWidget {
  const Article10({super.key});

  @override
  State<Article10> createState() => _Article10State();
}

class _Article10State extends State<Article10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 10",
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
