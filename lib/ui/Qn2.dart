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
                            "What are the advantages and disadvantages of chest X-ray for TB and CPA diagnosis?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Here are the advantages and disadvantages of using chest X-ray for TB and CPA diagnosis:\n\n"
                          "Advantages:\n"
                          "1. Accessibility: CXR is widely available in most healthcare facilities, including resource-limited settings, making it accessible for screening and diagnosis.\n"
                          "2. Non-invasive: It is a non-invasive procedure, which means it does not require any incisions or invasive methods, reducing patient discomfort\n"
                          "3. Rapid results: CXR provides quick results, allowing for timely diagnosis and treatment initiation, particularly crucial for infectious diseases like TB.\n"
                          "4. Detection of abnormalities: CXR can detect abnormalities in the lungs, such as infiltrates, cavitations, and consolidations, which are common features of both TB and CPA.\n"
                          "5. Cost-effectiveness: Compared to other imaging modalities like computed tomography (CT), CXR is relatively cost-effective, making it suitable for screening and large-scale diagnostic purposes.\n\n"
                          "Disadvantages:\n"
                          "1. Limited sensitivity and specificity: CXR may lack sensitivity and specificity, especially in the early stages of TB and CPA, leading to false-negative or false-positive results.\n"
                          "2. Subjectivity: Interpretation of CXR images is subjective and relies heavily on the expertise of the radiologist, which may vary and introduce variability in diagnosis.\n"
                          "3. Overlap with other conditions: CXR findings associated with TB and CPA, such as infiltrates and cavitations, may also occur in other pulmonary conditions, leading to diagnostic ambiguity.\n"
                          "4. Radiation exposure: Although the radiation dose from a single CXR is low, repeated exposure to radiation from serial CXRs or additional imaging studies may pose a risk, especially in vulnerable populations like children and pregnant women.\n"
                          "5. Limited visualization: CXR provides a two-dimensional image of the chest, limiting the visualization of certain structures and potentially missing subtle abnormalities, particularly in early-stage disease.\n"
                          "6. Follow-up challenges: CXR may not be suitable for monitoring disease progression or treatment response, as changes in the chest radiograph may be subtle or nonspecific, requiring additional imaging or clinical evaluation.\n",
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
