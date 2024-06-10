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
                            "How accurate is chest X-ray for TB and CPA diagnosis?",
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
                                    "The accuracy of chest X-ray for diagnosing tuberculosis (TB) and chronic pulmonary aspergillosis (CPA) can vary depending on various factors, including the stage of the disease, the expertise of the interpreting radiologist, and the presence of confounding factors. Here's an overview of the accuracy of chest x-ray for TB and CPA diagnosis:\n\n",
                              ),
                              TextSpan(
                                text: "Tuberculosis (TB):\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "1. Sensitivity: CXR has moderate to high\n  sensitivity for detecting pulmonary TB,\n  particularly in cases with advanced disease or\n  typical radiographic features such as\n  cavitations, consolidations, and infiltrates.\n  However, the sensitivity may be lower in cases\n  of early or paucibacillary TB.\n"
                                    "2. Specificity: The specificity of CXR for TB\n  diagnosis is generally lower compared to its\n  sensitivity, as CXR findings associated with TB,\n  such as nodules and infiltrates, can also occur\n  in other pulmonary conditions, leading to false-\n  positive results.\n"
                                    "3. Accuracy: Overall, CXR has been shown to\n  have a moderate accuracy for TB diagnosis,\n  but its performance may vary depending on\n  the population studied and the prevalence of\n  TB in the setting.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Chronic Pulmonary Aspergillosis (CPA):\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "1. Sensitivity: CXR sensitivity for diagnosing\n  CPA may vary depending on the stage and\n  extent of the disease. In cases of advanced\n  CPA with characteristic radiographic features\n  such as cavities, fungal balls, and fibrosis, CXR\n  sensitivity may be higher. However, in early or\n  milder forms of CPA, CXR sensitivity may be\n  lower.\n"
                                    "2. Specificity: Similar to TB, CXR specificity for\n  CPA diagnosis may be limited, as radiographic\n  features of CPA, such as cavities and nodules,\n  can overlap with other pulmonary conditions,\n  leading to false-positive results.\n"
                                    "3. Accuracy: The accuracy of CXR for CPA\n  diagnosis may vary depending on the\n  population studied and the prevalence of CPA\n  in the setting. Overall, CXR may provide\n  valuable information in the diagnostic workup\n  of CPA but is often used in conjunction with\n  other imaging modalities and clinical\n  evaluation for a comprehensive diagnosis.\n\n"
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
          ],
        ),
      ),
    );
  }
}
