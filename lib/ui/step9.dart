import 'package:flutter/material.dart';

class Step9 extends StatefulWidget {
  const Step9({super.key});

  @override
  State<Step9> createState() => _Step9State();
}

class _Step9State extends State<Step9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Planting out",
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
                      "Prior to the actual planting of coffee seedlings in the prepared holes, wet the soil to a depth of 60cm (2ft). Ensure that the roots protruding beyond the polythene pots are trimmed off before planting.\n"
                      "Then open up the soil mound in the Centre of the filled holes sufficiently to fit the size of the potted plant up to collar level. Remove the polythene pots before planting.\n"
                      "Carefully loosen caked soil around the roots to ease water uptake and root development.\n"
                      "Ensure that no depression or heap of soil is made around the plant. . Regularly inspect the planted field to identify any dead plants and replace them as soon as possible to have a full-planted garden growing at the same pace",
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
                            "A young Arabica Coffee garden without gaps",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/plant.png',
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
