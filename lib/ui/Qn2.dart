// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn2 extends StatefulWidget {
  const Qn2({super.key});

  @override
  State<Qn2> createState() => _Qn2State();
}

class _Qn2State extends State<Qn2> {
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
                            "What are the advantages and disadvantages of chest X-ray for TB and CPA diagnosis?",
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
                                    "Here are the advantages and disadvantages of using chest X-ray for TB and CPA diagnosis:\n\n",
                              ),
                              TextSpan(
                                text: "Advantages:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "1. Accessibility: CXR is widely available in most\n  healthcare facilities, including resource-limited\n  settings, making it accessible for screening\n  and diagnosis.\n"
                                    "2. Non-invasive: It is a non-invasive procedure,\n  which means it does not require any incisions\n  or invasive methods, reducing patient\n  discomfort\n"
                                    "3. Rapid results: CXR provides quick results,\n  allowing for timely diagnosis and treatment\n  initiation, particularly crucial for infectious\n  diseases like TB.\n"
                                    "4. Detection of abnormalities: CXR can detect\n  abnormalities in the lungs, such as infiltrates,\n  cavitations, and consolidations, which are\n  common features of both TB and CPA.\n"
                                    "5. Cost-effectiveness: Compared to other\n  imaging modalities like computed tomography\n  (CT), CXR is relatively cost-effective, making it\n  suitable for screening and large-scale\n  diagnostic purposes.\n\n",
                              ),
                              TextSpan(
                                text: "Disadvantages:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "1. Limited sensitivity and specificity: CXR may\n  lack sensitivity and specificity, especially in the\n  early stages of TB and CPA, leading to false-\n  negative or false-positive results.\n"
                                    "2. Subjectivity: Interpretation of CXR images is\n  subjective and relies heavily on the expertise\n  of the radiologist, which may vary and\n  introduce variability in diagnosis.\n"
                                    "3. Overlap with other conditions: CXR findings\n  associated with TB and CPA, such as infiltrates\n  and cavitations, may also occur in other\n  pulmonary conditions, leading to diagnostic\n  ambiguity.\n"
                                    "4. Radiation exposure: Although the radiation\n  dose from a single CXR is low, repeated\n  exposure to radiation from serial CXRs or\n  additional imaging studies may pose a risk,\n  especially in vulnerable populations like\n  children and pregnant women.\n"
                                    "5. Limited visualization: CXR provides a two-\n  dimensional image of the chest, limiting the\n  visualization of certain structures and\n  potentially missing subtle abnormalities,\n  particularly in early-stage disease.\n"
                                    "6. Follow-up challenges: CXR may not be\n  suitable for monitoring disease progression or\n  treatment response, as changes in the chest\n  radiograph may be subtle or nonspecific,\n  requiring additional imaging or clinical\n  evaluation.\n",
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
