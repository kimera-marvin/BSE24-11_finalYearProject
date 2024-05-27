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
                            "How to improve the quality of the chest X-ray images?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Here are some strategies to enhance CXR image quality:\n"
                          "1. Patient Positioning: Ensure proper patient positioning, including adequate inspiration, correct alignment, and optimal exposure. Instruct the patient to stand or sit upright with arms raised and hands resting on the image receptor to minimize superimposition of anatomical structures.\n"
                          "2. Technical Factors: Adjust technical factors such as exposure parameters (kVp, mA, exposure time), grid usage, and collimation settings based on patient size, anatomy, and clinical indication. Use appropriate exposure techniques to achieve optimal image contrast and detail resolution.\n"
                          "3. X-ray Beam Alignment: Position the X-ray tube and image receptor correctly to ensure accurate beam alignment and minimize geometric distortions. Center the X-ray beam to the midpoint of the chest at the level of the mid-clavicle.\n"
                          "4. Grid Usage: Use a grid device when imaging thicker body parts or larger patients to reduce scatter radiation and improve image contrast. Ensure proper grid alignment and positioning to avoid grid cutoff artifacts.\n"
                          "5. Exposure Technique: Employ appropriate exposure techniques, including manual exposure factors selection or automatic exposure control (AEC) systems, to optimize image quality while minimizing radiation dose. Adjust exposure parameters based on patient size, pathology, and imaging protocol.\n"
                          "6. Image Processing: Apply image processing techniques such as contrast enhancement, edge enhancement, and noise reduction algorithms to improve image quality and visualization of anatomical structures. Use post-processing tools available on digital radiography systems to refine image appearance.\n"
                          "7. Artifact Reduction: Identify and minimize imaging artifacts such as motion blur, grid lines, processing artifacts, and foreign objects that may degrade image quality. Address factors contributing to artifacts through proper technique optimization and patient instruction.\n"
                          "8. Quality Assurance Program: Implement a comprehensive quality assurance program to monitor and maintain CXR image quality. Perform routine equipment calibration, quality control tests, and image evaluation to identify and address issues affecting image acquisition and interpretation.\n"
                          "9. Radiographer Training: Provide ongoing training and education to radiographers on proper imaging techniques, positioning protocols, equipment operation, and image quality optimization strategies. Foster a culture of continuous improvement and adherence to best practices in radiography.\n"
                          "10. Collaboration with Radiologists: Collaborate closely with radiologists and other healthcare professionals to optimize imaging protocols, interpret imaging findings, and provide feedback on image quality. Foster open communication and interdisciplinary teamwork to ensure high-quality patient care.\n",
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
