import 'package:flutter/material.dart';

class Mono extends StatefulWidget {
  const Mono({super.key});

  @override
  State<Mono> createState() => _MonoState();
}

class _MonoState extends State<Mono> {
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
                              "Monocropping System",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const Text(
                            "Monocropping is an agricultural practice of growing coffee as a single crop or pure stand on one piece or plot of farmland.",
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
                                  "An illustration of monocropping system land system",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Image.asset(
                                  'assets/images/monoSystemLand.png',
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
                                  "Monocropping system farmland",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Image.asset(
                                  'assets/images/monoFarmland.png',
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
                              "Advantages",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "\u2022 The coffee growing requirements, planting,\n   maintenance including pest control and\n   harvesting are conducted on the same crop\n   across the farmed land. This lower cost of\n   production.\n"
                            "\u2022 It is much easier to cultivate one kind of crop,\n   in terms of the knowledge and experience\n   needed to do it successfully.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Disadvantages",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "\u2022 May lead to food insecurity. While increased\n   coffee yields are campaigned for, need for\n   food to feed the households is critical.\n"
                            "\u2022 Growing the same coffee crop year by year\n   depletes valuable soil nutrients that plants\n   rely on and hence this deficiency must be\n   compensated for by increasing amounts of\n   fertilizers.\n"
                            "\u2022 High livelihood risk in case of crop failure.",
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
