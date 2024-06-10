// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn7 extends StatefulWidget {
  const Qn7({super.key});

  @override
  State<Qn7> createState() => _Qn7State();
}

class _Qn7State extends State<Qn7> {
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
                            "How to improve the quality of the chest X-ray images?",
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
                                    "Here are some strategies to enhance CXR image quality:\n",
                              ),
                              TextSpan(
                                text:
                                    "1. Patient Positioning: Ensure proper patient\n  positioning, including adequate inspiration,\n  correct alignment, and optimal exposure.\n  Instruct the patient to stand or sit upright with\n  arms raised and hands resting on the image\n  receptor to minimize superimposition of\n  anatomical structures.\n\n"
                                    "2. Technical Factors: Adjust technical factors\n  such as exposure parameters (kVp, mA,\n  exposure time), grid usage, and collimation\n  settings based on patient size, anatomy, and\n  clinical indication. Use appropriate exposure\n  techniques to achieve optimal image contrast\n  and detail resolution.\n\n"
                                    "3. X-ray Beam Alignment: Position the X-ray\n  tube and image receptor correctly to ensure\n  accurate beam alignment and minimize\n  geometric distortions. Center the X-ray beam\n  to the midpoint of the chest at the level of the\n  mid-clavicle.\n\n"
                                    "4. Grid Usage: Use a grid device when imaging\n  thicker body parts or larger patients to reduce\n  scatter radiation and improve image contrast.\n  Ensure proper grid alignment and positioning\n  to avoid grid cutoff artifacts.\n\n"
                                    "5. Exposure Technique: Employ appropriate\n  exposure techniques, including manual\n  exposure factors selection or automatic\n  exposure control (AEC) systems, to optimize\n  image quality while minimizing radiation dose.\n  Adjust exposure parameters based on patient\n  size, pathology, and imaging protocol.\n\n"
                                    "6. Image Processing: Apply image processing\n  techniques such as contrast enhancement,\n  edge enhancement, and noise reduction\n  algorithms to improve image quality and\n  visualization of anatomical structures. Use\n  post-processing tools available on digital\n  radiography systems to refine image\n  appearance.\n\n"
                                    "7. Artifact Reduction: Identify and minimize\n  imaging artifacts such as motion blur, grid\n  lines, processing artifacts, and foreign objects\n  that may degrade image quality. Address\n  factors contributing to artifacts through proper\n  technique optimization and patient instruction.\n\n"
                                    "8. Quality Assurance Program: Implement a\n  comprehensive quality assurance program to\n  monitor and maintain CXR image quality.\n  Perform routine equipment calibration, quality\n  control tests, and image evaluation to identify\n  and address issues affecting image\n  acquisition and interpretation.\n\n"
                                    "9. Radiographer Training: Provide ongoing\n  training and education to radiographers on\n  proper imaging techniques, positioning\n  protocols, equipment operation, and image\n  quality optimization strategies. Foster a\n  culture of continuous improvement and\n  adherence to best practices in radiography.\n\n"
                                    "10. Collaboration with Radiologists: Collaborate\n  closely with radiologists and other healthcare\n  professionals to optimize imaging protocols,\n  interpret imaging findings, and provide\n  feedback on image quality. Foster open\n  communication and interdisciplinary\n  teamwork to ensure high-quality patient care.\n",
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
