import 'package:flutter/material.dart';

class Step4 extends StatefulWidget {
  const Step4({super.key});

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mark out the rows",
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
                      "Marking row for planting coffee is important in establishing a coffee farm. The recommended row direction is following the contour lines. Arabica Coffee varieties SL14, SL28, KP423 and KP162 are planted at a spacing of 2.4m x 2.4 m (8ft x 8ft.). This results in about 680 coffee trees per acre or 1,700 trees per hectare. If the field is on a sloping terrain, first establish terraces as shown in Figure 7 below before marking the planting holes.\n"
                      "\u2022 When land is greater than 15% slope, contour\n   planting must be undertaken.\n"
                      "\u2022 Construct a simple wooden A-frame structure\n   measuring 5ft. (1.5m) high with legs 4 ft.\n   (1.2m) apart. The horizontal support\n   crosspiece is marked at the central point. A\n   string with a weight (stone or metal object) is\n   attached at the apex of the ‘A-frame’ and\n   allowed to hang freely.\n"
                      "\u2022 Starting at the bottom of the slope, ‘walk’ the\n   “A-frame” across the slope by rotating it from\n   one leg of the frame to the other. Place a\n   marker at each.",
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
                            "Windbreakers at 15m on a slope",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/mark.png',
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
