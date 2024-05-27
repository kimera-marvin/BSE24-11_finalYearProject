// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article6 extends StatefulWidget {
  const Article6({super.key});

  @override
  State<Article6> createState() => _Article6State();
}

class _Article6State extends State<Article6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 6",
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
