import 'package:flutter/material.dart';

class Practices extends StatefulWidget {
  const Practices({super.key});

  @override
  State<Practices> createState() => _PracticesState();
}

class _PracticesState extends State<Practices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "5 Arabica Coffee best storage practices",
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
                      "Even where coffee has been dried well, it can still grow moulds during storage, leading to musty flavors if it is not properly stored. The best practices for coffee storage described below should be adhered to:\n"
                      "\u2022 Coffee must be properly cooled first before\n   storage. This prevents condensation and\n   therefore re-wetting of the coffee.\n"
                      "\u2022 After cooling, the dry coffee should preferably\n   be packed in clean sisal/jute gunny bags. The\n   bags should be covered to prevent the coffee\n   from absorbing moisture and growing\n   moulds.\n"
                      "\u2022 Coffee storage in polythene bags, as shown in\n   below, is prohibited and should not be used.\n"
                      "\u2022 Packed parchment or dry cherry coffee should\n   be stored in stores, silos or warehouse\n   dedicated for coffee storage\n"
                      "\u2022 The store/silo or warehouse should have\n   cemented floor, plastered walls, leak proof\n   roof and well-ventilated with a relative\n   humidity of less than 65%.\n"
                      "\u2022 The coffee bags in the store/silo/warehouse\n   should be placed on pallets raised to at least\n   15cm as seen in Figure 73 to avoid re-wetting\n   by ground moisture. Stacked bags should be\n   placed at least 30cm away from the walls.\n"
                      "\u2022 The coffee warehouse should not be used to\n   store any contaminant product such as\n   strong smelling liquids such as petrol or\n   paraffin, diesel, or agricultural fertilizers and\n   chemicals. This is because stored coffee\n   quickly absorbs and retains foreign odours,\n   which are eventually detected in the final cup\n   and thereby spoiling its quality.\n"
                      "NB: The coffee warehouse should also not be used as store for other farm produce such as beans, maize, ginger, to avoid pest infection and contamination.\n"
                      "\u2022 The environment around the coffee store\n   should be kept clean to maintain hygiene and\n   prevent rodents from making entry into the\n   store. A proper procedure for receiving coffee\n   into storage should be maintained on a First\n   In First Out (FIFO).\n",
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
                            "Coffee bags placed on pallets in a warehouse",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/ware.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "Woven polybags should not be used for holding green beans",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/beans.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "Sisal gunny bag",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/sisal.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
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
