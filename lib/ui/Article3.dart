// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article3 extends StatefulWidget {
  const Article3({super.key});

  @override
  State<Article3> createState() => _Article3State();
}

class _Article3State extends State<Article3> {
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
                            "The Radiological  diagnosis of CPA",
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
                            "assets/images/article3.png",
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
                                text: "Radiological Diagnosis\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "The radiological changes associated with CPA are the most significant proof for CPA diagnosis. Chest X-ray remains the most used imaging method worldwide, although CT provides a much more detailed visualization of the lung, and it is recommended for CPA diagnosis. Differential diagnosis of CPA includes lung cancer, metastases, cryptococcal nodules, coccidiomycosis and other pathogens . When it comes to fungal conditions that can mimic CPA, such as coccidiomycosis, geographic location and travel history should be taken into consideration . CPA is radiologically presented as multiple fungal balls in lungs, with cavitations and fibrosis . One single fungal ball is called aspergilloma and it is usually formed in a pre-existing lung cavity, consisting mainly of Aspergillus hyphae and extracellular matrix. Other ubiquitous fungi could also form fungal balls in the lungs, but they are extremely rare, and the most common cause is Aspergillus . Radiologically, CPA is presented usually as one or more cavities, typically with an irregular or thick wall, that tend to become larger over years, commonly forming pericavitary infiltrates and perforating into the pleura [11]. These cavities tend to affect the upper lobes  and they may or may not contain aspergilloma . One of the previous studies showed that the most common imaging manifestations in CPA include cavitation (63.9%), fungal ball (36.7%), pleural thickening (32.0%), and bronchiectasis (31.3%) . Although very sensitive and specific, a radiological diagnosis is not enough to make a conclusion that the patient suffers from CPA. CPA is presented by a combination of radiological findings and clinical symptoms present for at least 3 months .\n\n",
                              ),
                              TextSpan(
                                text:
                                    "It is very important to differentiate aspergilloma from serious lung conditions that require immediate specific therapy, such as cavitary lung cancer or bacterial lung abscess . These diseases may often resemble aspergilloma on imaging, thus additional clinical information and sometimes lung biopsy are required for obtaining the definitive diagnosis. Lung tumor should always be included in differential diagnosis, as it can present in quite variable forms, one of those forms being a growth from a preexisting cystic mass, mimicking a fungus ball and making a diagnosis more challenging .\n\n",
                              ),
                              TextSpan(
                                text:
                                    "Chronic fibrosing pulmonary aspergillosis (CFPA) and chronic cavitary pulmonary aspergillosis (CCPA) are the most common complications of untreated CPA. CFPA is defined as irreversible fibrotic destruction of at least two lung lobes, leading to a progressive loss of the lung function . Subacute invasive pulmonary aspergillosis (SAIA) is also the complication of CPA, and it shows many clinical and radiological similarities with CCPA, and commonly overlaps.The main difference between SAIA and CCPA is a hyphal invasion of lung parenchyma that only happens in SAIA and can be detected if a biopsy is performed . Furthermore, there is a difference in the time course of radiological progression; SAIA is characterized by more rapid progression that occurs over weeks rather than months. SAIA usually affects immunocompromised individuals.  Patients with NTM infection may exhibit similar radiological changes as SAIA and CCPA patients, and therefore can present a diagnostic challenge [32]. It is often difficult to distinguish PTB from CPA, since PTB can also exhibit radiological features seen in CPA, such as cavitation, infiltrates, pleural thickening, and nodular formations. Furthermore, PTB also has the tendency to affect upper lung lobes. It is thought that the presence of intra-cavitary fungal ball, pleural thickening and paracavitary fibrosis are more commonly seen in patients with CPA, compared to patients with PTB. A case report study by Higashi et al. showed that pulmonary actinomycosis can have an almost identical radiological presentation as pulmonary aspergilloma, as it presented on chest radiography and CT with multiple cavities, fibrosis and intracavitary nodular lesions . Metastatic lesions present another possibility in differential diagnosis, as they can form cavities in the lung, resembling aspergilloma. So et al. reported a case of a patient with pulmonary metastasis of breast cancer presenting with a cavitary shadow and fungal ball-like masses on CT. They presumed that this pulmonary cavitation occurs through different mechanisms, including central degeneration and ischemic necrosis. They propose using bronchoscopy when evaluating patients with lung cavitary mimicking aspergilloma.\n\n",
                              ),
                              TextSpan(
                                text:
                                    "The implementation of fluorescence tomography to explore the complex lung microenvironments in the context of aspergillosis is promising. Lately, improvements to the specificity of radiographic imaging of invasive fungal infections have been attempted by coupling CT and positron emission tomography (PET) with [18F]fluorodeoxyglucose ([18F]FDG). [18F]FDG is a marker of metabolic activity well suited to cancer imaging, but with limited use in invasive fungal disease diagnostics due to its inability to differentiate between infectious etiologies, cancer, and inflammation. Scientists used bioluminescence imaging using single genetically modified strains of A. fumigatus. It has enabled in vivo monitoring of IA in animal models of disease. Radiolabeled Aspergillus-specific monoclonal antibodies, and iron siderophores can be used for in vivo detection of Aspergillus lung infections in humans. Similar diagnostic procedures were not described for CPA, but there are some of experimental mice models which could refer to all forms of aspergillosis. Non-invasive imaging techniques of live infected mice include also combining bioluminescence but with magnetic resonance imaging (MRI) to both obtain dynamic information of fungal burden and lesion number and size in a non-invasive manner [41]. The late-stage disease is oxygen-limited, so inflammation can cause issues in luminescence resolution. In this case, MRI information is particularly beneficial. The hyphal-specific humanized monoclonal radiolabelled ([64Cu]DOTA-JF5) antibody hJF5, which has been used as a tool for the monitoring of pulmonary aspergillosis using antibody-guided positron emission tomograph.\n",
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
                              "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10672318/",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10672318/",
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
