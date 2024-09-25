import 'package:flutter/material.dart';

class Step5 extends StatefulWidget {
  const Step5({super.key});

  @override
  State<Step5> createState() => _Step5State();
}

class _Step5State extends State<Step5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Establishing shade trees",
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
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      "Given the currents effects of climatic change, shade trees are very important in Arabica Coffee farming as interventions against excessive temperatures and heat stress that is responsible for flower and fruit abortion. Farmers should establish shade trees at least one year before coffee trees are planted out. Shade trees should not be planted at the same time or after planting the coffee seedlings\n",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "A coffee plantation intercropped with shade trees ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/est.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Recommended shade tree species in coffee:",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "In Uganda, certain tree species are recommended for growing in different regions of Uganda as shed trees. \n",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "1. Mt. Elgon region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "\u2022 Cordia Africana (Chichikiri, Chikichikiri, Gugikiri)\n"
                                "\u2022 Albizia coriaria (Kumulukhu, Chesovio, Guluku)\n"
                                "\u2022 Ficus natalensis (Gukaire)\n\n",
                          ),
                          TextSpan(
                            text: "2. South and Western Region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "\u2022 Ficus natalensis (Mutooma, Ekitooma),\n"
                                "\u2022 Albizia coriaria (Musisa, Murongo,\n   Muyenzayenze)\n"
                                "\u2022 Ficus mucuso (Mukunyu)\n\n",
                          ),
                          TextSpan(
                            text: "3. West Nile Region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "\u2022 Ficus natalensis (Mutuba, Ubi, Laru),\n"
                                "\u2022 Albizia coriaria (Oyo)\n"
                                "\u2022 Ficus mucuso (Uwi)\n\n",
                          ),
                          TextSpan(
                            text:
                                "Tree species to avoid as shade trees for coffee\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                            text:
                                "While planting shade trees, it is however important to remember that tree species with the following characteristics need to be avoided.\n\n",
                          ),
                          TextSpan(
                            text:
                                "1. Trees that are alternate host to Arabica Coffee pests\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Avocado\n"
                                "\u2022 Albizia chinensis;\n\n",
                          ),
                          TextSpan(
                            text:
                                "2. Hardwood trees that attract pit sawyers\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Grevillea robusta\n"
                                "\u2022 Maesopsis emimii (Musizi);\n\n",
                          ),
                          TextSpan(
                            text: "3.	Trees that take very long to grow \n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Milicia excelsa (Mvule);\n\n",
                          ),
                          TextSpan(
                            text:
                                "4.	Trees that can only provide a conical shaped shade\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Eucalyptus\n"
                                "\u2022 Jackfruit trees;\n\n",
                          ),
                          TextSpan(
                            text:
                                "5. Trees that have leaves, which take very long to decompose\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Pine\n"
                                "\u2022 Jackfruit\n"
                                "\u2022 Avocado;\n\n",
                          ),
                          TextSpan(
                            text:
                                "Advantages and disadvantages of shade trees\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: "Advantages\n",
                          ),
                          TextSpan(
                            text:
                                "\u2022 Helps to stabilize the soil by reducing soil\n   erosion and water runoff.\n"
                                "\u2022 Protects coffee bushes from heavy rainstorms\n   and hailstorms.\n"
                                "\u2022 Reduces the intensity of wind speeds and soil\n   erosion and act as windbreakers. \n"
                                "\u2022 Protects coffee plants from high solar radiation\n   and limit evapotranspiration \n"
                                "\u2022 Limits weed growth.\n"
                                "\u2022 Provides organic matter in soil.\n"
                                "\u2022 Reduces plant metabolism and encourages\n   more regular flowering.\n"
                                "\u2022 Is a requirement for organic coffee growing.\n\n",
                          ),
                          TextSpan(
                            text: "Disadvantages\n",
                          ),
                          TextSpan(
                            text:
                                "\u2022 They compete with coffee for nutrients and\n   water.\n"
                                "\u2022 Require regular pruning and thinning which is\n   labour intensive.\n"
                                "\u2022 They reduces photosynthetic activity and\n   causes elongation of internodes both of which\n   result in lower yields.\n"
                                "\u2022 Risk of coffee leaf rust is more rampant in\n   coffee with high shade tree cover. \n",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
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
