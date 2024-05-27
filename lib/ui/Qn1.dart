// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn1 extends StatefulWidget {
  const Qn1({super.key});

  @override
  State<Qn1> createState() => _Qn1State();
}

class _Qn1State extends State<Qn1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FAQ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 55, 114, 167),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "What is chest X-ray and how does it work?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "A chest X-ray is a medical imaging technique that uses electromagnetic radiation to create images of the structures inside the chest, including the heart, lungs, blood vessels, and bones. It is a commonly used diagnostic tool to detect and monitor various conditions affecting the chest, such as pneumonia, lung cancer, heart failure, and broken ribs.\n\n"
                          "Here's how a chest X-ray works:\n"
                          "1. X-ray Generation: X-rays are a form of  electromagnetic radiation produced by an X-ray machine. The machine generates X-rays by accelerating electrons and allowing them to collide with a metal target.\n"
                          "2. Penetration and Absorption: When the X-rays pass through the body, they are absorbed differently by different tissues based on their density. Dense tissues like bone absorb more X-rays and appear white on the X-ray image, while less dense tissues like air in the lungs allow more X-rays to pass through and appear darker.\n"
                          "3. Image Formation: The X-rays that pass through the body are captured by a detector, typically a film or a digital sensor, placed on the opposite side of the body from the X-ray source. The detector records the pattern of X-rays that have passed through the body, forming an image.\n"
                          "4. Image Interpretation: A radiologist or a physician interprets the X-ray image to identify any abnormalities or signs of disease. They examine the size, shape, and density of structures in the chest to make a diagnosis.\n",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
