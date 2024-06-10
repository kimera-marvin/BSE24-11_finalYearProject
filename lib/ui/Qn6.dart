// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn6 extends StatefulWidget {
  const Qn6({super.key});

  @override
  State<Qn6> createState() => _Qn6State();
}

class _Qn6State extends State<Qn6> {
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
                            "How to intepret the chest X-ray results for diagnosis?",
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
                                    "Interpreting chest X-ray results for diagnosis involves analyzing various structures and abnormalities present on the radiograph. Here's a general guideline on how to interpret chest x-ray findings:\n",
                              ),
                              TextSpan(
                                text:
                                    "1. Review the Technical Quality: Begin by\n  assessing the technical quality of the CXR,\n  including proper positioning, adequate\n  exposure, and absence of artifacts or technical\n  errors that may affect interpretation.\n\n"
                                    "2. Evaluate the Lung Fields: Examine the lung\n  fields bilaterally, looking for abnormalities such\n  as infiltrates, opacities, masses, nodules, or\n  areas of consolidation. Compare the density\n  and symmetry of lung fields.\n\n"
                                    "3. Assess the Lung Parenchyma: Evaluate the\n  lung parenchyma for signs of pathology,\n  including:\n"
                                    "\t\t \u2022Pulmonary infiltrates: Indicative of\n \t\t pneumonia, tuberculosis, or other infectious\n \t\t processes.\n"
                                    "\t\t \u2022Ground-glass opacities: Seen in interstitial\n \t\t lung diseases or pulmonary edema.\n"
                                    "\t\t \u2022Consolidation: Indicates alveolar filling, often\n \t\t seen in pneumonia.\n"
                                    "\t\t \u2022Nodules or masses: May suggest lung\n \t\t cancer, metastases, or granulomas.\n"
                                    "\t\t \u2022Cavitation: Seen in advanced tuberculosis,\n \t\t fungal infections, or lung abscesses.\n\n"
                                    "4. Inspect the Pleura: Assess the pleural spaces\n  for signs of pleural effusion, pneumothorax, or\n  pleural thickening. Look for blunting of the\n  costophrenic angles or presence of pleural-\n  based masses.\n\n"
                                    "5. Check the Mediastinum: Evaluate the\n  mediastinal structures, including the heart,\n  great vessels, and lymph nodes. Look for\n  mediastinal widening, lymphadenopathy, or\n  masses.\n\n"
                                    "6. Assess the Diaphragm: Examine the\n  diaphragmatic contours for abnormalities,\n  such as elevation, flattening, or eventration,\n  which may indicate diaphragmatic pathology\n  or subdiaphragmatic processes.\n\n"
                                    "7. Review the Cardiac Silhouette: Evaluate the\n  size and shape of the cardiac silhouette. Look\n  for cardiomegaly, chamber enlargement,\n  pericardial effusion, or signs of congestive\n  heart failure.\n\n"
                                    "8. Consider Clinical Context: Interpret CXR\n  findings in the context of the patient's clinical\n  history, symptoms, physical examination, and\n  other diagnostic tests. Consultation with a\n  radiologist or specialist may be necessary for\n  complex cases or uncertain findings.\n\n"
                                    "9. Document and Report Findings: Document\n  CXR findings systematically and accurately in\n  the medical record or radiology report. Include\n  relevant clinical information, differential\n  diagnoses, and recommendations for further\n  evaluation or management.\n\n"
                                    "10. Follow Up: Based on the CXR interpretation,\n  initiate appropriate interventions, follow-up\n  imaging studies, or referral to specialists for\n  further evaluation or treatment as needed.\n\n"
                                    "Interpreting CXR results requires a systematic approach, clinical correlation, and integration of findings with the patient's clinical presentation to arrive at an accurate diagnosis and formulate an optimal management plan.\n",
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
