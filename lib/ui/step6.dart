import 'package:flutter/material.dart';

class Step6 extends StatefulWidget {
  const Step6({super.key});

  @override
  State<Step6> createState() => _Step6State();
}

class _Step6State extends State<Step6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Set up water delivery systems",
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
                      "Planning for water conservation and its future availability is important while preparing the coffee field. The importance of water delivery systems cannot be overemphasized today given the erratic climate change effects. Irrigation or water delivery systems should be installed prior the planting of coffee trees. In setting up water delivery systems, the following must be considered:\n"
                      "\u2022 A reliable water source\n"
                      "\u2022 Pumping systems and filtering system\n"
                      "\u2022 Main distribution network\n"
                      "\u2022 Control heads, valves, automation and emitters (micro-sprinklers or drippers).",
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
                            "Map of Ugamda showing recommended shade trees by region",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/ug.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            "Options for water delivery systems ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Image.asset(
                            'assets/images/drip.PNG',
                            width: 400,
                            height: 280,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/drip2.PNG',
                            width: 400,
                            height: 180,
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
