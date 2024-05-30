// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article8 extends StatefulWidget {
  const Article8({super.key});

  @override
  State<Article8> createState() => _Article8State();
}

class _Article8State extends State<Article8> {
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
                            "Risk factors for Tubercolosis",
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
                            "assets/images/article8.jpg",
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
                                text: "Risk factors\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "People with weakened immune systems are most likely to develop active TB. The following are some issues that can weaken the immune system.\n\n",
                              ),
                              TextSpan(
                                text: "HIV\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "For people with HIV, doctors consider TB to be an opportunistic infection. This means that a person with HIV has a higher risk of developing TB and experiencing more severe symptoms than someone with a healthy immune system.\nTreatment for TB can be complex in a person with HIV, but a doctor can develop a comprehensive treatment plan that addresses both issues.\n\n",
                              ),
                              TextSpan(
                                text: "Smoking\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Tobacco use and secondhand smoke increase the risk of developing TB. These factors also make the disease harder to treat and more likely to return after treatment.\nQuitting smoking and avoiding contact with smoke can reduce the risk of developing TB.\n\n",
                              ),
                              TextSpan(
                                text: "Other conditions\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Some other health issues that weaken a person’s immune system and can increase the riskTrusted Source of developing TB include:\n‌low body weight‌\nsubstance abuse disorders\ndiabetes‌\nsilicosis‌\nsevere kidney disease‌\nhead and neck cancer\nSome medical treatments, such as an organ transplant, can also impede the functioning of the immune system.\nSpending time in a country where TB is common can also increase the risk of a person developing it. For information about the prevalence of TB in various countries, people can use this toolTrusted Source from the WHO.\n\n",
                              ),
                              TextSpan(
                                text: "Complications\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Without treatment, TB can be fatal.\nIf it spreads throughout a person’s body, the infection can cause problems with the cardiovascular system and metabolic function, among other issues.\nTB can also lead to sepsis, a potentially life threatening form of infection.\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://www.medicalnewstoday.com/articles/8856#summary",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://www.medicalnewstoday.com/articles/8856#summary",
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
