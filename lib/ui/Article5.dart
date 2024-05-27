// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Article5 extends StatefulWidget {
  const Article5({super.key});

  @override
  State<Article5> createState() => _Article5State();
}

class _Article5State extends State<Article5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Article 5",
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
