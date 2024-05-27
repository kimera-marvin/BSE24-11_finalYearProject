// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn5 extends StatefulWidget {
  const Qn5({super.key});

  @override
  State<Qn5> createState() => _Qn5State();
}

class _Qn5State extends State<Qn5> {
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
                            "How can I prepare for a chest X-ray for TB and CPA diagnosis?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "To prepare for a chest X-ray (CXR) for tuberculosis (TB) and chronic pulmonary aspergillosis (CPA) diagnosis, follow these general guidelines:\n\n"
                          "1. Clothing: Wear loose, comfortable clothing without any metal objects such as zippers, buttons, or jewelry in the chest area. This ensures ease of positioning during the X-ray and prevents any interference with the image quality.\n"
                          "2. Inform the Technologist: Inform the X-ray technologist if you are pregnant or suspect you might be pregnant, as special precautions may be necessary to minimize radiation exposure to the fetus.\n"
                          "3. Follow Instructions: Follow any specific instructions provided by the healthcare provider or imaging facility regarding dietary restrictions or medication adjustments, if applicable.\n"
                          "4. Remove Metal Objects: Remove any metal objects, such as jewelry, watches, piercings, or accessories, from the chest area before the X-ray examination. Metal objects can interfere with the quality of the X-ray image and may need to be removed or repositioned.\n"
                          "5. Provide Medical History: Provide your medical history, including any relevant information about respiratory symptoms, previous lung conditions, surgeries, or relevant medical procedures. This helps the healthcare provider interpret the chest x-ray findings accurately.\n"
                          "6. Relaxation Techniques: If you feel anxious or uncomfortable about the procedure, practice relaxation techniques such as deep breathing or visualization to help you stay calm during the X-ray examination.\n"
                          "7. Communicate Any Concerns: If you have any concerns or questions about the chest x-ray procedure, don't hesitate to communicate them with the healthcare provider or X-ray technologist. They can address your concerns and provide reassurance about the safety and necessity of the examination.\n"
                          "8. Follow Post-Exam Instructions: After the chest x-ray, follow any post-examination instructions provided by the healthcare provider, such as resuming normal activities or scheduling follow-up appointments for further evaluation or treatment.\n\n"
                          "By following these preparation tips, you can ensure a smooth and successful chest X-ray procedure for TB and CPA diagnosis, facilitating accurate interpretation of the images by healthcare providers.\n",
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
