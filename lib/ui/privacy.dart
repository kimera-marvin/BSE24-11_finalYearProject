import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Privacy policy",
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
                            "Privacy Policy for the Digital Chest X-ray Diagnostic App",
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
                                text: "Effective Date: May 27, 2024\n\n",
                                // style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "1. Introduction\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Welcome to the Digital Chest X-ray Diagnostic App ("
                                    "App"
                                    "). Your privacy is important to us. This Privacy Policy explains how we collect, use, disclose, and protect your information when you use our App.\n\n",
                              ),
                              TextSpan(
                                text: "2. Information We Collect\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Personal Information: We may collect personal\n   information that you provide to us, such as\n   your name, email address, phone number, and\n   any other information you provide during\n   registration or use of the App.\n\u2022 Health Information: The App collects health-\n  related data, including digital chest x-ray\n   images, diagnostic results, and related\n   metadata.\n\u2022 Usage Data: We automatically collect\n   information about your interaction with the\n   App, such as IP addresses, device\n   information, browser type, and usage\n   patterns.\n\n",
                              ),
                              TextSpan(
                                text: "3. How We Use Your Information\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 To Provide Services: We use your information\n   to provide, maintain, and improve the App's\n   functionality, including processing and\n   analyzing chest x-ray images to diagnose\n   active tuberculosis (TB) and chronic\n   pulmonary aspergillosis (CPA).\n\u2022 Communication: We may use your contact\n   information to send you updates, notifications,\n   and support messages related to the App.\n\u2022 Research and Development: Aggregated and\n   anonymized data may be used for research,\n   analysis, and development purposes to\n   improve our services.\n\u2022 Compliance: We may use your information to\n   comply with legal obligations, resolve\n   disputes, and enforce our agreements.\n\n",
                              ),
                              TextSpan(
                                text: "4. Information Sharing and Disclosure\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Service Providers: We may share your\n   information with third-party service providers\n   who perform services on our behalf, such as\n   hosting and data storage.\n\u2022 Legal Requirements: We may disclose your\n   information if required to do so by law or in\n   response to valid requests by public\n   authorities (e.g., a court or government \n   agency).\n\u2022 Business Transfers: In the event of a merger,\n   acquisition, or sale of all or a portion of our\n   assets, your information may be transferred\n   as part of that transaction.\n\u2022 With Your Consent: We may share your\n   information with third parties if you provide us\n   with your consent to do so.\n\n",
                              ),
                              TextSpan(
                                text: "5. Data Security\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "We implement reasonable security measures to protect your information from unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.\n\n",
                              ),
                              TextSpan(
                                text: "6. Data Retention\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "We retain your personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy unless a longer retention period is required or permitted by law. Diagnostic data and health information are retained for a period of time that allows for continuous service improvement and compliance with legal obligations.\n\n",
                              ),
                              TextSpan(
                                text: "7. Your Rights\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Access and Correction: You have the right to access and correct your personal information. You can do this by logging into your account or contacting us directly.\nDeletion: You may request the deletion of your personal information. We will comply with your request unless we are required to retain the information for legal or legitimate business purposes.\nOpt-Out: You may opt out of receiving promotional communications from us by following the unsubscribe instructions in those communications or by contacting us directly.\n\n",
                              ),
                              TextSpan(
                                text: "8. Children's Privacy\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "The App is not intended for use by individuals under the age of 18. We do not knowingly collect personal information from children under 18. If we become aware that we have collected personal information from a child under 18, we will take steps to delete such information.\n\n",
                              ),
                              TextSpan(
                                text: "9. Changes to This Privacy Policy\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\n\n",
                              ),
                              TextSpan(
                                text: "10. Contact Information\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "If you have any questions about this Privacy Policy, please contact us at:\n    \u2022 Email: kimeramarvin4@gmail.com\n    \u2022 Phone: +256 700970011\nBy using the Digital Chest X-ray Diagnostic App, you acknowledge that you have read and understood this Privacy Policy and agree to its terms.\n\n",
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
