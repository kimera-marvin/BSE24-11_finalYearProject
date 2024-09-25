import 'package:flutter/material.dart';

class Inter extends StatefulWidget {
  const Inter({super.key});

  @override
  State<Inter> createState() => _InterState();
}

class _InterState extends State<Inter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coffee Farm Management",
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
                              "Intercropping System",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const Text(
                            "Intercropping also known, as mixed cropping or cocultivation is a type of farming that involves planting coffee plus one or more other different crops in the same field.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Center(
                            child: Column(
                              children: [
                                const Text(
                                  "An illustration of Coffee-Banana intercrop at a spacing of 8 x 8ft",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Image.asset(
                                  'assets/images/interSpace.png',
                                  width: 400,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Center(
                            child: Column(
                              children: [
                                const Text(
                                  "Coffee-Banana intercrop spaced at 8ft x 8ft ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Image.asset(
                                  'assets/images/intercrop.png',
                                  width: 400,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Advantages of Intercropping",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "\u2022 Growing bananas in a young coffee field\n   ensures that the farmer gets some return\n   from the land before the coffee reaches the\n   productive stage.\n"
                            "\u2022 Intercropping banana and coffee reduces the\n   income risk faced by farmers who cultivate a\n   monocrop.\n"
                            "\u2022 Return to labour is often higher in banana–\n   coffee systems. It increases total revenue/\n   inflow per unit area by about 30% compared\n   to coffee monocropping.\n"
                            "\u2022 Improves coffee quality. In addition it provides\n   food to the household.\n"
                            "\u2022 Increases yields by intensifying crop\n   management of both bananas and coffee.\n"
                            "\u2022 The banana provides shade for coffee, which\n   reduces stress caused by extreme\n   temperatures and strong winds.\n"
                            "\u2022 Reduces greenhouse gas (GHG) emissions by\n   increasing carbon stocks from both banana\n   and coffee.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Disadvantages of Intercropping",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "\u2022 Competition for nutrients and sunlight\n"
                            "\u2022 It increases competition for water, nutrients and light.\n"
                            "\u2022 It is labour intensive and requires a lot of management and care.\n"
                            "\u2022 If shade is too dense, the yield potential of\n   coffee is reduced and the coffee will respond\n   poorly to fertilizer\n",
                            style: TextStyle(
                              fontSize: 15,
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
