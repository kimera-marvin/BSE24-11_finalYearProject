// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Article7 extends StatefulWidget {
  const Article7({super.key});

  @override
  State<Article7> createState() => _Article7State();
}

class _Article7State extends State<Article7> {
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
                            "All you need to know about tuberculosis (TB)",
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
                            "assets/images/article7.jpg",
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
                                text: "What is tuberculosis?\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "A person may develop TB after inhaling Mycobacterium tuberculosis (M. tuberculosis) bacteria, primarily from person to person.\nWhen TB affects the lungs, the disease is the most contagious, but a person will usually only become sick after close contact with someone who has this type of TB.\n\n",
                              ),
                              TextSpan(
                                text: "TB infection (latent TB)\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "An individual can have TB bacteria in their body and never develop symptoms. In most people, the immune system can contain the bacteria so that they do not replicate and cause disease. In this case, a person will have TB infection but not active disease.\nDoctors refer to this as latent TB. An individual may never experience symptoms and be unaware that they have the infection. There is also no risk of passing on a latent infection to someone else. However, a person with latent TB still requires treatment.\nThe CDC estimates that as many as 13 millionTrusted Source people in the U.S. have latent TB.\n\n",
                              ),
                              TextSpan(
                                text: "TB disease (active TB)\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "The body may be unable to contain TB bacteria. This is more common when the immune system is weakened due to illness or the use of certain medications.\nWhen this happens, the bacteria can replicate and cause symptoms, resulting in active TB.\nPeople with active TB can spread the infection.\nWithout medical intervention, TB becomes active in 5–10%Trusted Source of people with the infection. According to the CDC, progression occurs within 2–5 years in about 50% of these people.\nThe risk of developing active TB is higherTrusted Source in:\nanyone with a weakened immune system\n‌anyone who first developed the infection in the past 2–5 years\nolder adults and young children\n‌people who inject recreational drugs\n‌people who have not previously received appropriate treatment for TB\n\n",
                              ),
                              TextSpan(
                                text: "Symptoms\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Latent TB: A person with latent TB will have no symptoms, and no damage will show on a chest X-ray. However, a blood test or skin prick test will indicate that they have TB infection.\nActive TB: An individual with TB disease may experience a cough that produces phlegm, fatigue, a fever, chills, and a loss of appetite and weight. Symptoms typically worsen over time, but they can also spontaneously go away and return.\n\n",
                              ),
                              TextSpan(
                                text: "Early warning signs\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "A person should see a doctor if they experience;\n‌a persistent cough, lasting at least 3 weeks\n‌phlegm, which may have blood in it, when they cough\na loss of appetite and weight\n‌a general feeling of fatigue and being unwell\nswelling in the neck\na fever\nnight sweats\nchest pain\n\n",
                              ),
                              TextSpan(
                                text: "Beyond the lungs\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "TB usually affects the lungs, though symptoms can develop in other parts of the body. This is more common in people with weakened immune systems.\n\n",
                              ),
                              TextSpan(
                                text: "TB can cause:\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "persistently swollen lymph nodes, or “swollen glands”\nabdominal pain\n‌joint or bone pain\n‌confusion\na persistent headache\nseizures\n\n",
                              ),
                              TextSpan(
                                text: "Diagnosis\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "A person with latent TB will have no symptoms, but the infection can show up on tests. People should ask for a TB test if they:\nhave spent time with someone who has or is at risk of TB\nhave spent time in a country with high rates of TB\n‌work in an environment where TB may be present\nA doctor will ask about any symptoms and the person’s medical history. They will also perform a physical examination, which involves listening to the lungs and checking for swelling in the lymph nodes.\nTwo tests can show whether TB bacteria are present:\nthe TB skin test\n‌the TB blood test\nHowever, these cannot indicate whether TB is active or latent. To test for active TB disease, the doctor may recommend a sputum test and a chest X-ray.\nEveryone with TB needs treatment, regardless of whether the infection is active or latent.\n\n",
                              ),
                              TextSpan(
                                text: "Treatment\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "With early detection and appropriate antibiotics, TB is treatable.\nThe right type of antibiotic and length of treatment will depend on:\nthe person’s age and overall health\n‌whether they have latent or active TB\n‌the location of the infection\n‌whether the strain of TB is drug resistant\nTreatment for latent TB can vary.Trusted Source It may involve someone taking an antibiotic once a week for 12 weeks or every day for 9 months.\nTreatment for active TB may involve taking several drugs for 6–9 monthsTrusted Source. When a person has a drug-resistant strain of TB, the treatment will be more complex.\nIt is essential for people to complete the full course of treatment, even if symptoms go away. If a person stops taking their medication early, some bacteria can survive and become resistant to antibiotics. In this case, the person may go on to develop drug-resistant TB.\nDepending on the parts of the body that TB affects, a doctor may also prescribe corticosteroids.\n\n",
                              ),
                              TextSpan(
                                text: "Causes\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "M. tuberculosis bacteria cause TB. They can spread through the air in droplets when a person with pulmonary TB coughs, sneezes, spits, laughs, or talks.\nOnly people with active TB can transmit the infection. However, most individuals with the disease can no longer transmit the bacteria after receiving appropriate treatment for at least 2 weeks.\n\n",
                              ),
                              TextSpan(
                                text: "Prevention\n",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Ways of preventing TB from infecting others include:\n‌getting a diagnosis and treatment early\n‌staying away from other people until there is no longer a risk of infection\n‌wearing a mask, covering the mouth, and ventilating rooms\n",
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchURL(
                              "https://www.medicalnewstoday.com/articles/8856#prevention",
                            );
                          },
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  "https://www.medicalnewstoday.com/articles/8856#prevention",
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
