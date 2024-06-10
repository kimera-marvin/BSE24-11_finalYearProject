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
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: Column(
                      children: [
                        const Align(
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
                        const SizedBox(height: 8),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "A chest X-ray is a medical imaging technique that uses electromagnetic radiation to create images of the structures inside the chest, including the heart, lungs, blood vessels, and bones. It is a commonly used diagnostic tool to detect and monitor various conditions affecting the chest, such as pneumonia, lung cancer, heart failure, and broken ribs.\n\nHere's how a chest X-ray works:\n",
                              ),
                              TextSpan(
                                text: "1. X-ray Generation:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    " X-rays are a form of\n  electromagnetic radiation produced by an X-\n  ray machine. The machine generates X-rays by\n  accelerating electrons and allowing them to\n  collide with a metal target.\n\n",
                              ),
                              TextSpan(
                                text: "2. Penetration and Absorption:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    " When the X-rays\n  pass through the body, they are absorbed\n  differently by different tissues based on their\n  density. Dense tissues like bone absorb more\n  X-rays and appear white on the X-ray image,\n  while less dense tissues like air in the lungs\n  allow more X-rays to pass through and appear\n  darker.\n\n",
                              ),
                              TextSpan(
                                text: "3. Image Formation:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    " The X-rays that pass\n  through the body are captured by a detector,\n  typically a film or a digital sensor, placed on\n  the opposite side of the body from the X-ray\n  source. The detector records the pattern of X-\n  rays that have passed through the body,\n  forming an image.\n\n",
                              ),
                              TextSpan(
                                text: "4. Image Interpretation:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    " A radiologist or\n  a physician interprets the X-ray image to\n  identify any abnormalities or signs of disease.\n  They examine the size, shape, and density of\n  structures in the chest to make a diagnosis.\n",
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
          ],
        ),
      ),
    );
  }
}
