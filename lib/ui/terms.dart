import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  final String username;
  final String email;
  final String phone;
  final String region;
  final String district;
  final String village;
  final int currentIndex;

  const Terms({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    required this.region,
    required this.district,
    required this.village,
    this.currentIndex = 4,
  }) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  late String username;
  late String email;
  late String phone;
  late String region;
  late String district;
  late String village;

  @override
  void initState() {
    super.initState();
    username = widget.username;
    email = widget.email;
    phone = widget.phone;
    region = widget.region;
    district = widget.district;
    village = widget.village;
  }

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
        backgroundColor: Colors.brown,
        leading: Container(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: Colors.brown.withOpacity(0.1),
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
                              "Terms and Conditions for the AgriLife App",
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
                                  text: "1. Introduction\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "Welcome to the AgriLife App, developed by Group 18 (ICT), an application designed to provide comprehensive information and tools for coffee beans post-harvest handling and storage, specifically tailored for farmers in the Nyendo-Masaka district. By using this application, you agree to comply with and be bound by the following terms and conditions. Please read them carefully before using the app.\n\n",
                                ),
                                TextSpan(
                                  text: "2. Acceptance of Terms\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "By accessing or using the AgriLife App, you agree to be legally bound by these terms and conditions and our Privacy Policy. If you do not agree with any of these terms, you are prohibited from using or accessing this app.\n\n",
                                ),
                                TextSpan(
                                  text: "3. Purpose of the App\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "The AgriLife App is intended to:\n"
                                      "\u2022 Provide farmers with comprehensive\n   information on best practices for coffee\n   beans post-harvest handling and storage.\n\u2022 Enhance farmers' knowledge and skills in\n   reducing post-harvest losses and improving\n   coffee quality and profitability.\n\u2022 Offer tools and resources for data collection,\n   analysis, and reporting on post-harvest\n   handling processes.\n\n",
                                ),
                                TextSpan(
                                  text: "4. User Responsibilities\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "Users of the AgriLife App are responsible for:\n"
                                      "\u2022 Ensuring that any information provided in the\n   app is accurate and up-to-date.\n\u2022 Using the app in compliance with all\n   applicable laws and regulations.\n\u2022 Keeping their login credentials secure and not\n   sharing them with others.\n\u2022 Not using the app for any unauthorized or\n   illegal purposes.\n\n",
                                ),
                                TextSpan(
                                  text: "5. Data Collection and Privacy\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "\u2022 The AgriLife App collects data on coffee\n   harvesting methods, drying processes,\n   fermentation details, storage conditions, and\n   any observed defects or losses. This data is\n   used to provide analytics, reports, and\n   recommendations for improving post-harvest\n   practices.\n\u2022 By using the app, you consent to the collection\n   and use of your data as described in our\n   Privacy Policy. We are committed to\n   protecting your privacy and will not share your\n   data with third parties without your consent,\n   except as required by law.\n\n",
                                ),
                                TextSpan(
                                  text: "6. Intellectual Property\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "\u2022 All content, features, and functionality of the\n  AgriLife App, including but not limited to text,\n  graphics, logos, and software, are the\n  intellectual property of Group 18 (ICT) and are\n  protected by copyright, trademark, and other\n  applicable laws.\n\u2022 You are granted a limited, non-exclusive, non-\n   transferable, and revocable license to use the\n   AgriLife App for personal, non-commercial\n   purposes. You may not reproduce, distribute,\n   modify, create derivative works of, publicly\n   display, publicly perform, republish, download,\n   store, or transmit any of the material on our\n   app without the prior written consent of Group\n   18 (ICT).\n\n",
                                ),
                                TextSpan(
                                  text: "7. Limitation of Liability\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "\u2022 The AgriLife App is provided on an "
                                      "as"
                                      "-is"
                                      " and\n   "
                                      "as-available"
                                      " basis. While we strive to provide\n   accurate and up-to-date information, we make\n   no warranties or representations regarding the\n   accuracy, completeness, or reliability of any\n   content or services provided through the app.\n\u2022 Group 18 (ICT) will not be liable for any direct,\n   indirect, incidental, special, consequential, or\n   punitive damages arising from or related to\n   your use of the app or inability to use the app.\n\n",
                                ),
                                TextSpan(
                                  text: "8. Updates and Modifications\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "We may update or modify these terms and conditions from time to time. We will notify you of any changes by updating the "
                                      "Last Updated"
                                      " date at the bottom of these terms. Your continued use of the app after any changes to the terms constitutes your acceptance of the new terms.\n\n",
                                ),
                                TextSpan(
                                  text: "9. Governing Law\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "These terms and conditions are governed by and construed in accordance with the laws of Uganda. Any disputes arising from or related to your use of the AgriLife App shall be subject to the exclusive jurisdiction of the courts of Uganda.\n\n",
                                ),
                                TextSpan(
                                  text: "10. Contact Information\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "If you have any questions about these Terms, please contact us at:\n    \u2022 Email: kigoyebrian@gmail.com\n    \u2022 Phone: +256 708373048\n\nLast Updated: 6/9/24 \n",
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
      ),
    );
  }
}
