import 'package:flutter/material.dart';

class Rs4 extends StatefulWidget {
  const Rs4({super.key});

  @override
  State<Rs4> createState() => _Rs4State();
}

class _Rs4State extends State<Rs4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Establish Shade Trees",
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
                      " Given this era of climatic change (weather extremes), shade trees are very important in coffee farming). Farmers should establish shade trees atleast one year before coffee is planted out. Shade trees should be planted in rows throughout the coffee garden and care should be taken to avoid too many shade trees as they may compete with coffee for moisture and nutrients in addition to over-shading the coffee trees. It is recommended that the spacing of the shade trees be approximately 20-40m apart depending on the tree species and expected canopy profile\n",
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
                            "A Robusta Coffee plantation intercropped with shade trees",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/rest.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "The following tree species are recommended for growing in different regions of Uganda \n",
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
                            text: "1. Central Region \n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Ficus natalensis (Mutuba)\n"
                                "\u2022 Albizia coriaria (Mugavu, Musisiya\n"
                                "\u2022 Ficus mucuso (Mukunyu, Kabalira) \n\n",
                          ),
                          TextSpan(
                            text: "2. Mid-Northern Sub-Region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Ficus natalensis (Annar, Ananga),\n"
                                "\u2022 Albizia coriaria (Litek, Ober, Bata, Latoligo, Omogi, Ayekayek)\n"
                                "\u2022 Cordia africana (Akoiyi)\n"
                                "\u2022 Ficus ovata (kwoyo, pwoyo)\n\n",
                          ),
                          TextSpan(
                            text: "3. South and Western Region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\u2022 Ficus natalensis (Mutooma, Ekitooma\n"
                                "\u2022 Albizia coriaria (Musisa, Murongo, Muyenzayenze)\n"
                                "\u2022 Ficus mucuso (Mukunyu)\n\n",
                          ),
                          TextSpan(
                            text: "4.	Busoga Sub-Region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "\u2022 Ficus natalensis (Mugaire, Kiryanyonyi),\n"
                                "\u2022 Ficus mucuso (Mukunyu) \n"
                                "\u2022 Ficus ovata (Kookowe)\n\n",
                          ),
                          TextSpan(
                            text: "5.	West Nile Region\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                "\u2022 Ficus natalensis (Mutuba, Urbis, Laru), \n"
                                "\u2022 Albizia coriaria (Oyo) \n"
                                "\u2022 Ficus mucuso (Uwi)\n\n",
                          ),
                          TextSpan(
                            text:
                                "While planting shade trees, it is important to note that tree species with the following characteristics need to be avoided\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.green,
                            ),
                          ),
                          TextSpan(
                            text:
                                "\u2022 Trees that are alternate host to the black coffee\n   twig borer e.g. Avocado and Albizia chinensis; \n"
                                "\u2022 Hardwood trees that attract pit sawyers e.g.\n   Grevillea Robusta and Maesopsis eminii\n   (Musizi); \n"
                                "\u2022 Trees that take very long to grow e.g. Milicia\n   excelsa (Mvule);\n"
                                "\u2022 Trees that can only provide a conical shaped\n   shade e.g. Eucalyptus, Jack fruit trees. \n"
                                "\u2022 Trees that have leaves, which take very long to\n   decompose. \n\n",
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
