// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn4 extends StatefulWidget {
  const Qn4({super.key});

  @override
  State<Qn4> createState() => _Qn4State();
}

class _Qn4State extends State<Qn4> {
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
                            "Why is chest X-ray used for TB and CPA diagnosis?",
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
                                    "1. Screening and Detection: Chest x-ray is a\n  widely available and relatively inexpensive\n  imaging modality that can screen for\n  pulmonary abnormalities suggestive of TB or\n  CPA. It allows healthcare providers to detect\n  characteristic radiographic features\n  associated with these diseases, such as\n  infiltrates, nodules, cavities, and fibrosis.\n\n"
                                    "2. Diagnostic Aid: Chest x-ray plays a crucial\n  role in the diagnostic workup of suspected\n  cases of TB and CPA. It helps clinicians\n  visualize pulmonary abnormalities and assess\n  their distribution, extent, and severity. While\n  chest x-ray findings are not diagnostic on their\n  own, they provide valuable information that\n  can guide further diagnostic evaluation,\n  including microbiological testing, clinical\n  assessment, and other imaging studies.\n\n"
                                    "3. Monitoring Disease Progression: Chest x-ray\n  is used to monitor disease progression and\n  treatment response in patients diagnosed with\n  TB or CPA. Serial chest x-ray examinations\n  allow healthcare providers to track changes in\n  pulmonary abnormalities over time, assess the\n  effectiveness of antimicrobial therapy, and\n  detect complications such as worsening of\n  lung involvement or development of secondary\n  infections.\n\n"
                                    "4. Resource-Limited Settings: In resource-\n  limited settings where more sophisticated\n  imaging modalities such as computed\n  tomography (CT) scans may not be readily\n  available or affordable, chest x-ray serves as a\n  valuable tool for diagnosing and managing TB\n  and CPA. It provides a relatively rapid and cost-\n  effective means of evaluating pulmonary\n  pathology and guiding clinical decision-\n  making.\n\n"
                                    "5. Population Screening: Chest x-ray is used in\n  population-based screening programs for TB\n  and CPA, particularly in high-burden regions or\n  among individuals at increased risk of\n  infection or exposure. Mass chest radiography\n  campaigns can help identify individuals with\n  active or latent TB infection or those at risk of\n  developing CPA, facilitating early detection and\n  intervention.\n",
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
