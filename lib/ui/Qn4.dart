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
                            "Why is chest X-ray used for TB and CPA diagnosis?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "1. Screening and Detection: Chest x-ray is a widely available and relatively inexpensive imaging modality that can screen for pulmonary abnormalities suggestive of TB or CPA. It allows healthcare providers to detect characteristic radiographic features associated with these diseases, such as infiltrates, nodules, cavities, and fibrosis.\n"
                          "2. Diagnostic Aid: Chest x-ray plays a crucial role in the diagnostic workup of suspected cases of TB and CPA. It helps clinicians visualize pulmonary abnormalities and assess their distribution, extent, and severity. While chest x-ray findings are not diagnostic on their own, they provide valuable information that can guide further diagnostic evaluation, including microbiological testing, clinical assessment, and other imaging studies.\n"
                          "3. Monitoring Disease Progression: Chest x-ray is used to monitor disease progression and treatment response in patients diagnosed with TB or CPA. Serial chest x-ray examinations allow healthcare providers to track changes in pulmonary abnormalities over time, assess the effectiveness of antimicrobial therapy, and detect complications such as worsening of lung involvement or development of secondary infections.\n"
                          "4. Resource-Limited Settings: In resource-limited settings where more sophisticated imaging modalities such as computed tomography (CT) scans may not be readily available or affordable, chest x-ray serves as a valuable tool for diagnosing and managing TB and CPA. It provides a relatively rapid and cost-effective means of evaluating pulmonary pathology and guiding clinical decision-making.\n"
                          "5. Population Screening: Chest x-ray is used in population-based screening programs for TB and CPA, particularly in high-burden regions or among individuals at increased risk of infection or exposure. Mass chest radiography campaigns can help identify individuals with active or latent TB infection or those at risk of developing CPA, facilitating early detection and intervention.\n",
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
