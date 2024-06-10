// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn8 extends StatefulWidget {
  const Qn8({super.key});

  @override
  State<Qn8> createState() => _Qn8State();
}

class _Qn8State extends State<Qn8> {
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
                            "How to improve the accuracy of the chest X-ray images?",
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
                                    "1. Optimize Technical Parameters: Ensure\n  proper selection of exposure parameters such\n  as kilovoltage peak (kVp), milliamperage (mA),\n  exposure time, and source-to-image distance\n  (SID) based on patient characteristics,\n  pathology, and imaging protocol. Adjust\n  technical factors to achieve optimal image\n  quality and diagnostic accuracy while\n  minimizing radiation dose.\n\n"
                                    "2. Patient Positioning: Ensure correct patient\n  positioning to obtain well-aligned and artifact-\n  free chest x-ray images. Instruct the patient to\n  stand or sit upright with arms raised and\n  hands resting on the image receptor.\n  Encourage deep inspiration to expand lung\n  volume and improve visualization of lung\n  fields.\n\n"
                                    "3. X-ray Beam Alignment: Position the X-\n  ray tube and image receptor accurately to\n  ensure proper beam alignment and minimize\n  geometric distortions. Center the X-ray beam\n  to the midline of the chest at the level of the\n  mid-clavicle to achieve uniform exposure and\n  consistent image quality.\n\n"
                                    "4. Evaluate Image Quality: Perform real-time\n  image evaluation during acquisition to assess\n  image quality, positioning accuracy, and\n  exposure adequacy. Review images for\n  optimal visualization of anatomical structures,\n  proper collimation, adequate contrast,\n  and absence of artifacts.\n\n"
                                    "5. Quality Assurance Program: Implement a\n  comprehensive quality assurance program to\n  monitor and maintain the accuracy of chest x-\n  ray imaging systems. Conduct routine\n  equipment calibration, performance testing,\n  and image analysis to ensure compliance with\n  established standards and protocols.\n\n"
                                    "6. Image Processing Techniques: Utilize image\n  processing techniques such as contrast\n  enhancement, edge enhancement, and noise\n  reduction algorithms to improve image quality\n  and enhance diagnostic accuracy. Apply post-\n  processing tools available on digital\n  radiography systems to refine image\n  appearance and optimize visualization of\n  subtle abnormalities.\n\n"
                                    "7. Artifact Identification and Correction: Identify\n  and address imaging artifacts that may\n  compromise image accuracy, such as motion\n  blur, grid lines, processing artifacts, and\n  foreign objects. Take corrective actions to\n  minimize artifacts through proper technique\n  optimization and patient positioning.\n\n"
                                    "8. Radiographer Training: Provide ongoing\n  training and education to radiographers on\n  best practices for chest x-ray acquisition,\n  positioning techniques, image quality\n  assessment, and artifact recognition. Ensure\n  proficiency in image interpretation and\n  adherence to standardized protocols to\n  optimize accuracy and consistency of chest x-\n  ray images.\n\n"
                                    "9. Collaborative Interpretation: Foster\n  collaboration between radiographers,\n  radiologists, and other healthcare\n  professionals to optimize image acquisition\n  protocols, interpret imaging findings, and\n  ensure accurate diagnosis. Facilitate open\n  communication and interdisciplinary\n  teamwork to address clinical questions and\n  optimize patient care.",
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
