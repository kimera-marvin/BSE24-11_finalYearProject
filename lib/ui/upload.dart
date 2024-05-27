import 'dart:typed_data';

import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  final Uint8List? image;
  const Upload({Key? key, this.image}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.1),
      body: Center(
        child: Stack(
          children: [
           widget.image != null ?
            CircleAvatar(
              radius: 100,
               backgroundImage: MemoryImage(widget.image!),
            ): const CircleAvatar(
              radius: 100,
               backgroundImage: AssetImage("assets/images/article1.png"),
            )
          ],
        )
      ),
    );
  }
}
