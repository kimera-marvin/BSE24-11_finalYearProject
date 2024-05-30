// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Articles1 extends StatefulWidget {
  const Articles1({super.key});

  @override
  State<Articles1> createState() => _Articles1State();
}

class _Articles1State extends State<Articles1> {
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
                            "Active TB vs CPA: what's the difference?",
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
                            "assets/images/article1.png",
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
                                text: "BACKGROUND:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Pulmonary TB (PTB) and chronic pulmonary aspergillosis (CPA) are both progressive and debilitating parenchymal lung diseases with overlapping risk factors, symptomatology and radiological findings that often result in misdiagnosis of either diseases.\n\n",
                              ),
                              TextSpan(
                                text: "METHODS:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "We undertook a narrative review approach to describe the clinical and radiological manifestations of CPA and PTB and highlight the salient features that differentiate these two closely related maladies.\n\n",
                              ),
                              TextSpan(
                                text: "RESULTS:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "CPA is a frequent complication of treated PTB. In fact, 15–90% of CPA cases occur in patients with residual lung lesions following treatment for PTB. While CPA predominantly affects older patients with underlying lung diseases, both PTB and CPA present with clinically indistinguishable symptoms. Chest imaging findings of cavitation and fibrosis are common to both diseases. However, lymphadenopathy, miliary pattern and pleural effusion are predictive of active PTB, while aspergilloma, pleural thickening and paracavitary fibrosis are more common in CPA. Aspergillus-specific IgG serology has a central role in differentiating PTB (both active and healed) from CPA with a high sensitivity and specificity. CONCLUSION: Aspergillus-specific IgG serology is key in differentiating PTB and PTB relapse from CPA. It may be worthwhile developing clinical predictive scores that can be used in low-income settings to differentiate active TB, post-TB disease and TB+CPA co-infection.\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://www.researchgate.net/publication/352838447_Pulmonary_TB_and_chronic_pulmonary_aspergillosis_Clinical_differences_and_similarities",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://www.researchgate.net/publication/352838447_Pulmonary_TB_and_chronic_pulmonary_aspergillosis_Clinical_differences_and_similarities",
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
