// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Qn9 extends StatefulWidget {
  const Qn9({super.key});

  @override
  State<Qn9> createState() => _Qn9State();
}

class _Qn9State extends State<Qn9> {
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
                            "How to Save results?",
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
                                text: "Step 1: Installation and Setup\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "1. Download and Install\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "    \u2022 Download the app from the official app store\n      (Google Play Store for Android or Apple App\n      Store for iOS) or the provided download link\n      for desktop versions.\n    \u2022 Follow the on-screen instructions to install\n      the app on your device.\n\n",
                              ),
                              TextSpan(
                                text: "2. Initial Setup:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "    \u2022 Open the app and accept the End User\n      License Agreement (EULA) and Privacy\n      Policy.\n    \u2022 Create an account by entering your email,\n      creating a password, and verifying your\n      email address.\n    \u2022 Log in using your credentials.\n\n",
                              ),
                              TextSpan(
                                text: "3. Configure Settings:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "  Navigate to the settings menu to configure\n  preferences such as notification settings, data\n  storage options (local or cloud), and default\n  language.\n\n",
                              ),
                              TextSpan(
                                text: "Step 2: Capture or Import X-ray Image\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "1. Capture Image:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "    \u2022 From the home screen, tap the “Capture X-\n      ray” button.\n    \u2022 Ensure the x-ray machine is connected to\n      your device if capturing directly.\n    \u2022 Position the patient and the x-ray machine\n      correctly, then capture the x-ray image.\n\n",
                              ),
                              TextSpan(
                                text: "2. Import Existing Image:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "    \u2022 Alternatively, tap the “Import X-ray” button.\n    \u2022 Browse your device’s storage to select an\n      existing x-ray image file.\n    \u2022 Ensure the selected file is in a supported\n      format (e.g., JPEG, PNG, DICOM).\n\n",
                              ),
                              TextSpan(
                                text: "Step 3: Process the X-ray Image\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "1. Submit for Diagnosis:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "    \u2022 Once satisfied with the image, tap the\n      “Analyze” button to submit the x-ray image\n      for processing.\n    \u2022 The app will begin analyzing the image\n      using the integrated machine learning\n      algorithms.\n\n",
                              ),
                              TextSpan(
                                text: "Step 4: View Diagnostic Results\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "1. Processing Notification:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "  A notification will appear indicating that the\n  image is being processed. This may take a\n  few seconds to a couple of minutes\n  depending on the complexity of the image.\n\n",
                              ),
                              TextSpan(
                                text: "2. Access Results:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "    \u2022Once processing is complete, a notification\n      will prompt you to view the results.\n    \u2022 Tap the notification or navigate to the\n      “Results” tab to access the diagnostic\n      report.\n\n",
                              ),
                              TextSpan(
                                text: "3. Review Diagnostic Report:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "  The diagnostic report will display key findings,\n  including:\n    \u2022 Presence of active TB or CPA indications.\n    \u2022 Confidence levels of the diagnosis.\n    \u2022 Recommendations for further action if\n      necessary.\n    \u2022 The report may also include annotated\n      images highlighting areas of concern.\n\n",
                              ),
                              TextSpan(
                                text: "Step 5: Save and Manage Results\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "1. Save Results:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "  The results are automatically saved to the\n  app’s database.\n\n",
                              ),
                              TextSpan(
                                text: "2. Access Saved Results:\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "  Navigate to the History screen to view past\n  diagnostic results.\n",
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
