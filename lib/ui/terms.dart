import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Terms and Conditions",
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
                            "Terms and Conditions for the Digital Chest X-ray Diagnostic App",
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
                                text: "1. Acceptance of Terms\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "By downloading, installing, or using the Digital Chest X-ray Diagnostic App ("
                                    "App"
                                    "), you agree to be bound by these Terms and Conditions ("
                                    "Terms"
                                    "). If you do not agree to these Terms, please do not use the App.\n\n",
                              ),
                              TextSpan(
                                text: "2. Use of the App\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Eligibility: You must be at least 18 years old to\n   use the App. By using the App, you represent\n   and warrant that you are at least 18 years old.\n\u2022 License: The App is licensed, not sold, to you.\n  Subject to these Terms, we grant you a non-\n  exclusive, non-transferable, limited license to\n  use the App on your device.\n\u2022 Restrictions:\n   You agree not to:\n    -	 Modify, reverse engineer, or create\n       derivative works based on the App.\n    -	 Use the App for any unlawful purpose or in\n       any way that could harm the App or impair\n       anyone else's use of the App.\n\n",
                              ),
                              TextSpan(
                                text: "3. Privacy and Data\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Data Collection: The App may collect certain\n   information about your usage, including digital\n   chest x-ray images, diagnostic results, and\n   metadata. By using the App, you consent to\n   the collection and use of this data in\n   accordance with our Privacy Policy.\n\u2022 Data Security: We implement reasonable\n   security measures to protect your data.\n   However, we cannot guarantee absolute\n   security, and you acknowledge that you use\n   the App at your own risk.\n\n",
                              ),
                              TextSpan(
                                text: "4. Medical Disclaimer\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Informational Purposes: The App is designed\n   to assist in the diagnostic process but is not a\n   substitute for professional medical advice,\n   diagnosis, or treatment. Always seek the\n   advice of your physician or other qualified\n   health provider with any questions you may\n   have regarding a medical condition.\n\u2022 No Warranties: The diagnostic results provided\n   by the App are based on machine learning\n   algorithms and are intended for informational\n   purposes only. We make no warranties\n   regarding the accuracy, completeness, or\n   usefulness of the App's diagnostic results.\n\n",
                              ),
                              TextSpan(
                                text: "5. Intellectual Property\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Ownership: All intellectual property rights in\n   and to the App, including but not limited to\n   software, text, graphics, logos, and\n   trademarks, are owned by us or our licensors.\n\u2022 Use of Content: You may not use any of our\n   intellectual property without our prior written\n   consent.\n\n",
                              ),
                              TextSpan(
                                text: "6. Updates and Modifications\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Updates: We may provide updates, upgrades,\n   or modifications to the App. These may be\n   automatically installed without providing any\n   additional notice or receiving any additional\n   consent.\n\u2022 Modifications to Terms: We reserve the right to\n   modify these Terms at any time. Your\n   continued use of the App after any such\n   modifications constitutes your acceptance of\n   the new Terms.\n\n",
                              ),
                              TextSpan(
                                text: "7. Termination\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "\u2022 Termination by Us: We may terminate or\n   suspend your access to the App at any time,\n   without notice, for any reason, including if you\n   breach these Terms.\n\u2022 Effect of Termination: Upon termination, you\n   must cease all use of the App and delete all\n   copies from your device.\n\n",
                              ),
                              TextSpan(
                                text: "8. Limitation of Liability\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, whether incurred directly or indirectly, or any loss of data, use, goodwill, or other intangible losses, resulting from\n    (i)	your use or inability to use the App;\n    (ii)	any unauthorized access to or use of our\n         servers and/or any personal information\n         stored therein.  \n\n",
                              ),
                              TextSpan(
                                text: "9. Governing Law\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "These Terms are governed by and construed in accordance with the laws of the jurisdiction in which our company is established, without regard to its conflict of law principles.\n\n",
                              ),
                                   TextSpan(
                                text: "10. Contact Information\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "If you have any questions about these Terms, please contact us at:\n    \u2022 Email: kimeramarvin4@gmail.com\n    \u2022 Phone: +256 700970011\nBy using the Digital Chest X-ray Diagnostic App, you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions.\n\n",
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
