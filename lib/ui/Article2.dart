// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article2 extends StatefulWidget {
  const Article2({super.key});

  @override
  State<Article2> createState() => _Article2State();
}

class _Article2State extends State<Article2> {
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
                            "Easy Signs to look out for Chronic Pulmonary Aspergilosis (CPA)",
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
                            "assets/images/article2.png",
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
                                text: "Clinical Diagnosis\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Early stages of CPA are usually clinically subtle, and a number of patients exhibit symptoms late in the course of the disease. The asymptomatic period can last 2–10 years, even longer in some cases. There are many clinical symptoms that can be found in patients with CPA, but none of them are specific only to this disease. Patients with a simple aspergilloma and Aspergillus nodules are typically asymptomatic. On the other hand, patients with chronic cavitary pulmonary aspergillosis (CCPA) and chronic fibrosing pulmonary aspergillosis (CFPA) will usually develop the clinical symptoms. The most common clinical symptoms of CPA are productive cough, hemoptysis, while systemic symptoms include weight loss and fatigue. Hou et al. showed that 92.8% of CPA patients presented with cough, 63.8% exhibited hemoptysis, while sputum production was present in 23.2% of patients . Akram et al. in their retrospective study analyzed 218 CPA patients. The mean age of participants was 45.75 ± 6.26 years and 73.4% were males, and most subjects were non-smokers. It is well known that smoking is regarded as the major predisposing factor for development of COPD and other chronic lung conditions which are the base for CPA. Cough was the symptom in 95% of patients, fatigue in 92.7%, and sputum production in 90.4% of them. An amount of 85.8% of patients were with a fever, 59.6% had hemoptysis, weight loss in 34.9%, dyspnea in 17.9% and chest pain in 10.1% of patients . On the other hand, Zhong et al., in a retrospective study, described clinical features in different subtypes of CPA and showed the presence of cough in 85% of CPA patients, expectoration in 70.7%, hemoptysis in 54.4%, and fever in 29.9% of subjects . Weight loss occurs slowly during a longer period of time and may become very pronounced without treatment. Hemoptysis can vary from minor and occasional to extensive and life-threatening, causing significant blood loss . As mentioned, patients can also experience fatigue, chest pain, and shortness of breath. Constitutional symptoms, such as fever and night sweats are unusual in these patients and if present they are usually related to the complication of CPA which leads to invasive fungal disease or another infection, such as bacterial pneumonia or TB . Since none of these symptoms is specific to CPA, diagnosis cannot be based solely on the clinical picture. Chronic cough, weight loss, fatigue, night sweats and chest pain can also be attributed to PTB, which is the number one differential diagnosis for CPA. The study of Akrem et al. demonstrated previous lung TB in 44% of patients, and that active TB persisted in 18.8%. Other respiratory conditions included pulmonary sarcoidosis (21.1%), bronchiectasis 15.1%, asthma (10.6%), and COPD (10.6%) . A study based in Pakistan found that TB was the underlying cause of CPA in 86.6% of patients followed by bronchiectasis caused by allergic bronchopulmonary aspergillosis (ABPA) in 11.9% . On the other hand, a study conducted in the United Kingdom found that previous classical tuberculosis and non-tuberculous mycobacterial infection were the most common primary underlying conditions (15.3% and 14.9%, respectively). Others included allergic bronchopulmonary aspergillosis (ABPA), COPD and/or emphysema, pneumothorax and prior treated lung cancer . Difficult to diagnose is the persistence of other lung diseases and conditions in CPA patients, due to masking and overlapping symptoms. Denning et al. showed that symptoms of underlying lung diseases can mask CPA comorbidity in a non-immunocompromised host. Emphysema and previous cavitary TB can mask CCPA, fibrosing CPA, aspergilloma, and nodule(s). Bronchiectasis can mask Aspergillus-bronchitis, whereas asthma can cover up ABPA . COPD, a comorbidity that is often present in CPA patients, can mimic CPA symptoms, such as cough and shortness of breath, making it hard to distinguish the two diseases. Early-stage lung cancer may also present a diagnostic challenge as it can manifest with identical symptomatology and very similar radiological changes as CPA. A retrospective cohort study showed that CPA diagnosis is often missed in patients suspected of chest malignancy, which is considered to be the case due to low CPA awareness, as well as insufficiently specific diagnostic tools used in this patient population.The most common extrapulmonaly chronic diseases in CPA patients are diabetes mellitus, autoimmune diseases and hypertension.",
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
