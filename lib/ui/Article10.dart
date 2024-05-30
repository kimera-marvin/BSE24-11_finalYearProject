// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article10 extends StatefulWidget {
  const Article10({super.key});

  @override
  State<Article10> createState() => _Article10State();
}

class _Article10State extends State<Article10> {
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
                            "Serological evidence of chronic pulmonary Aspergillosis in tuberculosis patients",
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
                            "assets/images/article10.jpg",
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
                                    "Pulmonary tuberculosis (PTB) is a significant risk factor for fungal infection. The cavitary lesions post PTB serves as a good reservoir for fungal colonization and subsequent infection. Furthermore, the severe immunosuppression associated with HIV and TB co-infection is another predisposition. The inadequate capacity to investigate and manage fungal infection in PTB patients increases their morbidity and mortality. The study aimed to provide serological evidence of chronic pulmonary aspergillosis (CPA) among PTB patients in Kenya. Towards this, we analysed 234 serum samples from patients presenting with persistent clinical features of PTB infections despite TB treatment in four referral hospitals.\n\n",
                              ),
                              TextSpan(
                                text: "Methods\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "This was a cross sectional laboratory based study and patients were recruited following an informed consent. Serological detection of Aspergillus fumigatus IgG was done using enzyme-linked immunosorbent assay (Bordier Affinity Products SA). Sputum samples were subjected to microscopy and standard fungal culture. The isolated fungi were subjected to macro and micro morphological identifications and confirmed by sequence analysis of calmadulin, betatubilin and ITS genes.\n\n",
                              ),
                              TextSpan(
                                text: "Results\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Serological evidence of CPA or fungal sensitization was 46(19.7%) and equivocal or borderline was 14(6.0%). Mycological investigations of sputum resulted in 88(38%) positive for fungal culture. Aspergillus spp. accounted for 25(28%) of which A. fumigatus was 13(14.8%), A. niger 8(9.1%), A. terreus, A. flavus, A. candidus and A. clavatus 1 (1.1%) each. This was followed by Penicillium spp. 10 (11.4%), Scedosporium spp. 5 (5.7%) and Rhizopus spp. 3 (3.4%). Among the yeasts; Candida albicans accounted for 18(20.5%) followed by C. glabrata 5(5.7%). Cryptococcus spp. was isolated from 3(3.4%) of the samples while 13(14.8%) were other yeasts.\n\n",
                              ),
                              TextSpan(
                                text: "Conclusion\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Chronic pulmonary aspergillosis is a significant co-morbidity in PTB patients in Kenya that could be misdiagnosed as relapse or treatment failures in the absence of reliable diagnostic and clinical management algorithm. It could be the cause of persistent clinical symptoms despite TB treatment often misdiagnosed as TB smear/GeneXpert MTB/RIF® negative or relapse. We recommend that all patients with persistent clinical symptoms despite TB treatment should be subjected to fungal investigations before retreatment.\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://bmcinfectdis.biomedcentral.com/articles/10.1186/s12879-022-07782-9",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://bmcinfectdis.biomedcentral.com/articles/10.1186/s12879-022-07782-9",
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
