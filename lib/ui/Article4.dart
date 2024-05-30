// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article4 extends StatefulWidget {
  const Article4({super.key});

  @override
  State<Article4> createState() => _Article4State();
}

class _Article4State extends State<Article4> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Articles",
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
                            "Treatment for CPA",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            "assets/images/article4.png",
                            width: 400,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 18),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "Patients with single aspergillomas generally do well with surgery and are best given pre-and post-operative antifungals to prevent other complications. For more complex cases (CCPA), lifelong use of antifungals is normal, along with regular X-rays to observe progress. It is important to monitor the blood levels of antifungals to ensure optimal dosing, as individuals vary in how their bodies process these drugs\n\n",
                              ),
                              TextSpan(
                                text:
                                    "If bleeding is occurring and surgery is not possible, other treatments can limit blood loss. For example, tranexamic acid can be given to encourage clotting. If that fails and bleeding becomes excessive, blood vessel embolisation should be carried out\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://mft.nhs.uk/wythenshawe/services/respiratory-and-allergy/national-aspergillosis-centre/about-aspergillosis/chronic-pulmonary-aspergillosis-cpa/#:~:text=Symptoms,period%20longer%20than%203%20months.",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://mft.nhs.uk/wythenshawe/services/respiratory-and-allergy/national-aspergillosis-centre/about-aspergillosis/chronic-pulmonary-aspergillosis-cpa/#:~:text=Symptoms,period%20longer%20than%203%20months.",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors
                                    .blue, // Set the link text color to blue
                                decoration: TextDecoration
                                    .underline, // Add underline style to link text
                                decorationColor: Colors.blue,
                              ),
                            ),
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
