import 'package:flutter/material.dart';

class Rs2 extends StatefulWidget {
  const Rs2({super.key});

  @override
  State<Rs2> createState() => _Rs2State();
}

class _Rs2State extends State<Rs2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Plant windbreakers",
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
                      "Windbreakers are usually located along boundaries of the coffee plantation. They should be established before planting the coffee. Preferred trees include avocados, jackfruit and mangoes. Other useful trees used include Ficus natalensis, which is preferably planted at a spacing of 60ftx60ft. The spacing between windbreakers on sloping land however should be closer. Windbreakers are useful in many ways. They help to:\n"
                      "\u2022 Accelerate the growth of young coffee trees\n"
                      "\u2022 Lower the maximum temperature or raise the\n   minimum temperatures within the coffee\n   especially at high altitudes\n"
                      "\u2022 Conserve soil moisture and limits erosion\n"
                      "\u2022 Increase biodiversity and may provide farmer\n   with alternative source of income.",
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
                            "Windbreakers planted at a spacing of 30m on a flat gradient",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/clear.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
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