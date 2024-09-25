import 'package:flutter/material.dart';

class RCT extends StatefulWidget {
  const RCT({super.key});

  @override
  State<RCT> createState() => _RCTState();
}

class _RCTState extends State<RCT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coffee Types",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        // leading: Container(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  // color: Colors.brown,
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2. ROBUSTA COFFEE",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                // color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Robusta Coffee (Coffea canephora) is grown in the low altitude areas of Uganda, ranging from about 900 metres to 1,200 metres above sea level. It has a shallow root system and grows as a robust tree or shrub to about 10 m tall. It flowers irregularly, taking about 10–11 months for cherries to ripen depending on rainfall distribution, producing oval-shaped beans. Robusta Coffee has a greater crop yield per tree than that of Arabica, contains more caffeine (2.7% compared to Arabica’s 1.5% and contains less sugar (3–7% compared to Arabica’s 6–9%). It is less susceptible to pests and disease, thus, needs less fungicides and pesticides than Arabica\n",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Benefits of growing Robusta Coffee",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          const Text(
                            "\u2022 Provides an assured income.\n"
                            "\u2022 Uganda’s high altitude Robusta is of a better\n  cupping quality and fetches a higher price\n  (premium).\n"
                            "\u2022 Can be well integrated with other crops on the\n  farm hence increasing returns per unit area to\n  the farmer.\n"
                            "\u2022 It is a beverage with well-documented health\n  benefits. • Source of employment.\n"
                            "\u2022 It is perennial, remaining productive for up to\n  4050 years without replanting.\n",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Robusta Coffee growing zones in Uganda",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          const Text(
                            "Robusta is the major type of coffee grown in Uganda, accounting for about 80% of production. It grows in most low altitude areas of Uganda, covering Central, Eastern, Mid North, West Nile, Western and South Western Uganda that are within 900 - 1,500m above sea level. Robusta has Lake Victoria Crescent as its native habitat. Wild Robusta still grows in natural forests around the Lake Victoria Basin and in the Kibaale and Zooka-Adjumani forest reserves where it is estimated that between 150-400 hectares are still under wild Robusta Coffee\n",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                const Text(
                                  "MAP OF UGANDA SHOWING THE ROBUSTA COFFEE GROWING ZONES",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Image.asset(
                                  'assets/images/robusta.png',
                                  width: 650,
                                  height: 450,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 25),
                              ],
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
      ),
    );
  }
}
