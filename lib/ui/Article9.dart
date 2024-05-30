// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article9 extends StatefulWidget {
  const Article9({super.key});

  @override
  State<Article9> createState() => _Article9State();
}

class _Article9State extends State<Article9> {
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
                            "Misdiagnosis of chronic pulmonary aspergillosis as pulmonary tuberculosis",
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
                            "assets/images/article9.jpg",
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
                                text: "Background\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Diagnosis of chronic pulmonary aspergillosis (CPA) is based on a combination of clinical symptomatology, compatible chest imaging findings, evidence of Aspergillus infection and exclusion of alternative diagnosis, all occurring for more than 3 months. Recently, a rapid, highly sensitive and specific point-of-care lateral flow device (LFD) has been introduced for the detection of Aspergillus-specific immunoglobulin (Ig)G, especially in resource-limited settings where CPA is underdiagnosed and often misdiagnosed as smear-negative pulmonary tuberculosis (PTB). Therefore, in our setting, where tuberculosis (TB) is endemic, exclusion of PTB is an important first step to the diagnosis of CPA. We used the recently published CPA diagnostic criteria for resource-limited settings to identify patients with CPA in our center.\n\n",
                              ),
                              TextSpan(
                                text: "Case presentation\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Three Ugandan women (45/human immunodeficiency virus (HIV) negative, 53/HIV infected and 18/HIV negative), with a longstanding history of cough, chest pain, weight loss and constitutional symptoms, were clinically and radiologically diagnosed with PTB and empirically treated with an anti-tuberculous regimen despite negative microbiological tests. Repeat sputum Mycobacteria GeneXpert assays were negative for all three patients. On further evaluation, all three patients met the CPA diagnostic criteria with demonstrable thick-walled cavities and fungal balls (aspergilomas) on chest imaging and positive Aspergillus-specific IgG/IgM antibody tests. After CPA diagnosis, anti-TB drugs were safely discontinued for all patients, and they were initiated on capsules of itraconazole 200 mg twice daily with good treatment outcomes.\n\n",
                              ),
                              TextSpan(
                                text: "Conclusions\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "The availability of simple clinical diagnostic criteria for CPA and a LFD have the potential to reduce misdiagnosis of CPA and in turn improve treatment outcomes in resource-limited settings.\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://jmedicalcasereports.biomedcentral.com/articles/10.1186/s13256-021-02721-9",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://jmedicalcasereports.biomedcentral.com/articles/10.1186/s13256-021-02721-9",
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
