import 'package:flutter/material.dart';

class Step7 extends StatefulWidget {
  const Step7({super.key});

  @override
  State<Step7> createState() => _Step7State();
}

class _Step7State extends State<Step7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dig holes",
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
                      "The hole is the foundation of coffee production and productivity. Digging holes before the planting season helps the farmer to be ready for planting coffee at the start of the first rains. Hole preparation process;\n"
                      "\u2022 Marking with pegs positions where the coffee\n   seedlings will be planted.\n"
                      "\u2022 This is followed by digging circular holes of\n   60cm (2ft) deep and 60cm (2ft) in diameter\n   at the marked points. This should be done\n   atleast 3 months before planting as it allows\n   for better water and root penetration through\n   the soil.\n"
                      "\u2022 When digging the holes, keep the fertile\n   topsoil separate from the subsoil.\n"
                      "\u2022 Refill the holes with manured soil about a\n   month before planting. Where possible, mix\n   the topsoil with a 20-litre basin of well-\n   decomposed manure before refilling each\n   planting hole. If inorganic fertilizer is\n   available, you may mix at planting one\n   handful of Triple Super Phosphate (TSP),\n   Single Super Phosphate (SSP) or Di-\n   Ammonium Phosphate (DAP). Phosphorus\n   stimulates root growth.\n"
                      "Finally, heap the soil above the ground level to allow for sinking when the soil settles.",
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
                            "An illustrated process for preparing coffee-planting holes. ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // First image with text above
                              Column(
                                children: [
                                  const Text(
                                    'Step 1',
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width: 100, // Width of the image container
                                    height:
                                        100, // Height of the image container
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.brown,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/s1.png', 
                                      fit: BoxFit
                                          .contain, 
                                    ),
                                  ),
                                ],
                              ),
                              // Second image with text above
                              Column(
                                children: [
                                  const Text(
                                    'Step 2',
                                    style: TextStyle(
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.brown,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/s2.png', 
                                      fit: BoxFit
                                          .contain, 
                                    ),
                                  ),
                                ],
                              ),
                              // Third image with text above
                              Column(
                                children: [
                                  const Text(
                                    'Step 3',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.brown,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/s3.png', 
                                      fit: BoxFit
                                          .contain, 
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
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
