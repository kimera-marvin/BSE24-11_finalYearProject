import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  final String username;
  final String email;
  final String phone;
  final String region;
  final String district;
  final String village;
  final int currentIndex;

  const Privacy({
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
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
          "Privacy policy",
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
                  // color: Colors.blue.withOpacity(0.1),
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
                              "Privacy Policy for the AgriLife App",
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
                                  text: "Last Updated: September 6, 2024\n\n",
                                  // style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: "1. Introduction\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "Welcome to the AgriLife App! Your privacy is important to us. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application, AgriLife, developed by Group 18 (ICT) for farmers in the Nyendo-Masaka district.\n\nPlease read this Privacy Policy carefully. By using the AgriLife App, you consent to the data practices described in this policy. If you do not agree with the terms of this Privacy Policy, please do not access the application.\n\n",
                                ),
                                TextSpan(
                                  text: "2. Information We Collect\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "We may collect and process the following types of information from users of the AgriLife App:\n"
                                      "(a) Personal Information:\n  \u2022 Identity Information: This includes your name,\n   phone number, and other identifiers that you\n   provide when you register or use the app.\n  \u2022 Contact Information: This includes your email\n   address or phone number to facilitate\n   communication and provide customer\n   support\n\n(b) Usage Data:\n  \u2022 Technical Data: This includes your device\n   information, internet protocol (IP) address,\n   browser type, version, and other technology\n   on the devices you use to access the app.\n  \u2022 Usage Information: This includes information\n   about how you use the app, such as the\n   features you use and the time spent on the\n   app.\n\n(c) Agricultural Data:\n  \u2022 Post-Harvest Handling Data: This includes\n   data you provide related to coffee harvesting\n   methods, drying processes, fermentation\n   details, storage conditions, and observed\n   defects or losses.\n\n",
                                ),
                                TextSpan(
                                  text: "3. How We Use Your Information\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "We use the information we collect for various purposes, including:\n"
                                      "\u2022 To Provide and Maintain the App: Ensuring\n   that the app functions correctly and providing\n   you with the features and services you expect.\n \u2022 To Improve the App: Understanding how users\n   interact with the app and making\n   improvements to enhance user experience.\n \u2022 To Communicate with You: Sending you\n   important updates, security alerts, and\n   support messages related to your use of the\n   app.\n \u2022 To Provide Data Analytics: Analyzing\n   agricultural data to offer insights and\n   recommendations for improving post-harvest\n   practices.\n\n",
                                ),
                                TextSpan(
                                  text:
                                      "4. Information Sharing and Disclosure\n",
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
                                      "We take reasonable measures to protect your information from unauthorized access, disclosure, alteration, or destruction. However, please note that no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee absolute security.\n\n",
                                ),
                                TextSpan(
                                  text: "6. Data Retention\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "We retain your personal information only for as long as necessary to fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required or permitted by law. When your information is no longer needed, we will delete it or anonymize it in a manner that prevents re-identification.\n\n",
                                ),
                                TextSpan(
                                  text: "7. Your Privacy Rights\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "\u2022 Access: You have the right to request access\n   to the personal information we hold about\n   you.\n\u2022 Correction: You have the right to request that\n   we correct any inaccuracies in your personal\n   information.\n\u2022 Deletion: You have the right to request that we\n   delete your personal information, subject to\n   certain conditions.\n\u2022 Objection: You have the right to object to the\n   processing of your personal information in\n   certain circumstances.\nTo exercise these rights, please contact us at the contact information provided below.\n\n",
                                ),
                                TextSpan(
                                  text: "8. Children's Privacy\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "The AgriLife App is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If we become aware that we have inadvertently collected personal information from a child under 13, we will take steps to delete such information as soon as possible.\n\n",
                                ),
                                TextSpan(
                                  text: "9. Changes to This Privacy Policy\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "We may update our Privacy Policy from time to time. We will notify you of any changes by updating the ""Last Updated"" date at the top of this policy. You are advised to review this Privacy Policy periodically for any changes. Your continued use of the app after any changes to the Privacy Policy will constitute your acknowledgment of the changes and your consent to abide by and be bound by the modified policy.\n\n",
                                ),
                                TextSpan(
                                  text: "10. Contact Information\n",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "If you have any questions about this Privacy Policy, please contact us at:\n    \u2022 Email: kigoyebrian@gmail.com\n    \u2022 Phone: +256 708373048\n\nThank you for using the AgriLife App!\n\n",
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
