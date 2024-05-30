// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article5 extends StatefulWidget {
  const Article5({super.key});

  @override
  State<Article5> createState() => _Article5State();
}

class _Article5State extends State<Article5> {
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
                            "Case Definition of Chronic Pulmonary Aspergillosis in Resource-Constrained Settings",
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
                            "assets/images/article5.png",
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
                                    "Chronic pulmonary aspergillosis (CPA) is a recognized complication of pulmonary tuberculosis (TB). In 2015, the World Health Organization reported 2.2 million new cases of nonbacteriologically confirmed pulmonary TB; some of these patients probably had undiagnosed CPA. In October 2016, the Global Action Fund for Fungal Infections convened an international expert panel to develop a case definition of CPA for resource-con constrained settings. This panel defined CPA as illness for >3 months and all of the following: 1) weight loss, persistent cough, and/or hemoptysis; 2) chest images showing progressive cavitary infiltrates and/or a fungal ball and/or pericavitary fibrosis or infiltrates or pleural thickening; and 3) a positive Aspergillus IgG assay result or other evidence of Aspergillus infection. The proposed definition will facilitate advancements in research, practice, and policy in lower- and middle-income countries as well as in resource-constrained settings.\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6056117/#:~:text=This%20panel%20defined%20CPA%20as,positive%20Aspergillus%20IgG%20assay%20result",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6056117/#:~:text=This%20panel%20defined%20CPA%20as,positive%20Aspergillus%20IgG%20assay%20result",
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
