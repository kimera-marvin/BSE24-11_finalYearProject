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
                            "How can I prepare for a chest X-ray for TB and CPA diagnosis?",
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
                                    "To prepare for a chest X-ray (CXR) for tuberculosis (TB) and chronic pulmonary aspergillosis (CPA) diagnosis, follow these general guidelines:\n\n",
                              ),
                              TextSpan(
                                text:
                                    "1. Clothing: Wear loose, comfortable clothing\n  without any metal objects such as zippers,\n  buttons, or jewelry in the chest area. This\n  ensures ease of positioning during the X-ray\n  and prevents any interference with the image\n  quality.\n\n"
                                    "2. Inform the Technologist: Inform the X-ray\n  technologist if you are pregnant or suspect you\n  might be pregnant, as special precautions may\n  be necessary to minimize radiation exposure\n  to the fetus.\n\n"
                                    "3. Follow Instructions: Follow any specific\n  instructions provided by the healthcare\n  provider or imaging facility regarding dietary\n  restrictions or medication adjustments, if\n  applicable.\n\n"
                                    "4. Remove Metal Objects: Remove any metal\n  objects, such as jewelry, watches, piercings, or\n  accessories, from the chest area before the X-\n  ray examination. Metal objects can interfere\n  with the quality of the X-ray image and may\n  need to be removed or repositioned.\n\n"
                                    "5. Provide Medical History: Provide your\n  medical history, including any relevant\n  information about respiratory symptoms,\n  previous lung conditions, surgeries, or relevant\n  medical procedures. This helps the healthcare\n  provider interpret the chest x-ray findings\n  accurately.\n\n"
                                    "6. Relaxation Techniques: If you feel anxious or\n  uncomfortable about the procedure, practice\n  relaxation techniques such as deep breathing\n  or visualization to help you stay calm during\n  the X-ray examination.\n\n"
                                    "7. Communicate Any Concerns: If you have any\n  concerns or questions about the chest x-ray\n  procedure, don't hesitate to communicate\n  them with the healthcare provider or X-ray\n  technologist. They can address your concerns\n  and provide reassurance about the safety and\n  necessity of the examination.\n\n"
                                    "8. Follow Post-Exam Instructions: After the\n  chest x-ray, follow any post-examination\n  instructions provided by the healthcare\n  provider, such as resuming normal activities or\n  scheduling follow-up appointments for further\n  evaluation or treatment.\n\n"
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
          ],
        ),
      ),
    );
  }
}
