import 'package:flutter/material.dart';

class RMono extends StatefulWidget {
  const RMono({super.key});

  @override
  State<RMono> createState() => _RMonoState();
}

class _RMonoState extends State<RMono> {
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
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Align(
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
                          Text(
                            " Monocropping is an agricultural practice of growing coffee as a single crop or pure stand on one piece of farmland as shown in the advantages and disadvantages of coffee monocropping are highlighted.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 15),
                          Align(
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
                          Text(
                            "\u2022 The coffee growing requirements, planting,\n   maintenance including pest control and\n   harvesting are the same across the farmed\n   land. This lowers specific operational costs\n   and enhances optimization of those\n   operations.\n"
                            "\u2022 It is much easier to cultivate one kind of crop,\n   in terms of the knowledge and experience\n   needed to do it successfully.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 15),
                          Align(
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
                          Text(
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
