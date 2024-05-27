// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article8 extends StatefulWidget {
  const Article8({super.key});

  @override
  State<Article8> createState() => _Article8State();
}

class _Article8State extends State<Article8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 8",
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
