// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn3 extends StatefulWidget {
  const Qn3({super.key});

  @override
  State<Qn3> createState() => _Qn3State();
}

class _Qn3State extends State<Qn3> {
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
                          "How accurate is chest X-ray for TB and CPA diagnosis?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                       SizedBox(height: 8),
                        Text(
                          "The accuracy of chest X-ray for diagnosing tuberculosis (TB) and chronic pulmonary aspergillosis (CPA) can vary depending on various factors, including the stage of the disease, the expertise of the interpreting radiologist, and the presence of confounding factors. Here's an overview of the accuracy of chest x-ray for TB and CPA diagnosis:\n\n"
                          "Tuberculosis (TB):\n"
                          "1. Sensitivity: CXR has moderate to high sensitivity for detecting pulmonary TB, particularly in cases with advanced disease or typical radiographic features such as cavitations, consolidations, and infiltrates. However, the sensitivity may be lower in cases of early or paucibacillary TB.\n"
                          "2. Specificity: The specificity of CXR for TB diagnosis is generally lower compared to its sensitivity, as CXR findings associated with TB, such as nodules and infiltrates, can also occur in other pulmonary conditions, leading to false-positive results.\n"
                          "3. Accuracy: Overall, CXR has been shown to have a moderate accuracy for TB diagnosis, but its performance may vary depending on the population studied and the prevalence of TB in the setting.\n\n"
                          "Chronic Pulmonary Aspergillosis (CPA):\n"
                          "1. Sensitivity: CXR sensitivity for diagnosing CPA may vary depending on the stage and extent of the disease. In cases of advanced CPA with characteristic radiographic features such as cavities, fungal balls, and fibrosis, CXR sensitivity may be higher. However, in early or milder forms of CPA, CXR sensitivity may be lower.\n"
                          "2. Specificity: Similar to TB, CXR specificity for CPA diagnosis may be limited, as radiographic features of CPA, such as cavities and nodules, can overlap with other pulmonary conditions, leading to false-positive results.\n"
                          "3. Accuracy: The accuracy of CXR for CPA diagnosis may vary depending on the population studied and the prevalence of CPA in the setting. Overall, CXR may provide valuable information in the diagnostic workup of CPA but is often used in conjunction with other imaging modalities and clinical evaluation for a comprehensive diagnosis.\n\n"
                          "While chest x-ray is a valuable tool in the diagnostic evaluation of TB and CPA, its interpretation should be integrated with clinical findings, microbiological tests, and other imaging studies to improve diagnostic accuracy and guide patient management decisions. Additionally, advanced imaging modalities such as computed tomography (CT) scans may be utilized for cases where chest x-ray findings are inconclusive or further characterization of pulmonary abnormalities is needed.\n",
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
