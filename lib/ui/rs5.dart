import 'package:flutter/material.dart';

class Rs5 extends StatefulWidget {
  const Rs5({super.key});

  @override
  State<Rs5> createState() => _Rs5State();
}

class _Rs5State extends State<Rs5> {
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
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Planning for water conservation and its future availability is important while preparing the coffee field. The importance of water delivery systems cannot be overemphasized today given the erratic climate change effects. Irrigation or water delivery systems should be installed prior the planting of coffee trees. In setting up water delivery systems, the following must be considered:\n"
                      "\u2022 A reliable water source\n"
                      "\u2022 Pumping systems and filtering system\n"
                      "\u2022 Control heads, valves, automation and emitters (micro-sprinklers or drippers).",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15),
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
