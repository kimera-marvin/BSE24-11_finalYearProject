// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article6 extends StatefulWidget {
  const Article6({super.key});

  @override
  State<Article6> createState() => _Article6State();
}

class _Article6State extends State<Article6> {
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
                            "Prevalence of chronic pulmonary asperlogosis",
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
                            "assets/images/article6.png",
                            width: 400,
                            height: 200,
                            // fit: BoxFit.cover,
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
                                    "Tuberculosis (TB) is a widespread, and, in many cases, fatal, infectious disease and remains a health problem worldwide. The number of incident cases for TB in individuals who are human immunodeficiency virus (HIV)-negative has increased from 5.0 million (4.8 million to 5.1 million) in 1990 to 7.1 million (6.9 million to 7.3 million) in 2013 . Deaths from TB in HIV-negative individuals were 1.3 million in 2013 . In Iran, the incidence and deaths of TB in HIV-negative individuals were 16,485 and 1,402 in 2013, respectively. It has been reported that patients with TB have defective macrophages, monocytes, and T cells function, as well as chemotaxis defects that predispose them to opportunistic fungal infections . On the other hand, healed pulmonary TB can result in a pulmonary cavity. These preexisting cavities become infected with Aspergillus and an aspergilloma may then form after months or years of infection . Among the many different underlying conditions, TB is the single most common primary underlying condition in the development of chronic pulmonary aspergillosis (CPA).\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Aspergillosis is a fungal infection resulting from infection or allergy to fungi in the Aspergillus genus .Among the different species of Aspergillus, A. fumigatus is the most prevalent species involved in aspergillosis . Pulmonary aspergillosis is the usual clinical entity, which includes: CPA (including single pulmonary aspergilloma), allergic bronchopulmonary aspergillosis, subacute invasive (chronic necrotizing pulmonary), and acute invasive aspergillosis. Immunodeficiency and/or underlying lung disease are major factors preceding aspergillosis.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "There are a few reports of aspergillosis complicating TB from different countries, diagnosed with different diagnostic methods . Prior studies from developed countries of aspergillosis complicating TB, in particular those with old TB cavities, show high rates of Aspergillus antibody detection and aspergilloma development in up to 25 % .The prevalence of CPA after TB has not been studied in the Middle East or Iran.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "This is the first study with established diagnostic methods to evaluate CPA in patients with pulmonary TB (PTB) in Masih Daneshvari Hospital in Tehran, the capital city of Iran, as a specialized center for TB patients.\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://link.springer.com/article/10.1007/s10096-015-2409-7",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://link.springer.com/article/10.1007/s10096-015-2409-7",
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
