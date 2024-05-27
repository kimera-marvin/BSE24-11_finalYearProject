// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article7 extends StatefulWidget {
  const Article7({super.key});

  @override
  State<Article7> createState() => _Article7State();
}

class _Article7State extends State<Article7> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 7",
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