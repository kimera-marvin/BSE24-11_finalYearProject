import 'package:flutter/material.dart';

class Step8 extends StatefulWidget {
  const Step8({super.key});

  @override
  State<Step8> createState() => _Step8State();
}

class _Step8State extends State<Step8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select good planting materials",
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
                      "\u2022 Get coffee seedling with 4 – 5 pairs of true\n   leaves for elite Arabica seedlings one month\n   before the onset of the rainy season. \n"
                      "\u2022 Always use seeds from a certified source \n"
                      "\u2022 Reject any seedlings with signs of pests and\n   diseases, especially root mealy bugs, aphids\n   and other sucking insects. This prevents\n   introducing pests and diseases into your\n   garden.\n"
                      "\u2022 Do not buy seedlings if the roots protrude far\n   beyond the polythene pots because the\n   taproot may be damaged\n"
                      "\u2022 Avoid seedlings with twisted taproot (J-root\n   system)",
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
                            "A healthy good seedling suitable for planting",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/health.png',
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
                            "A coffee seedling with unsuitable J- root ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/seed.png',
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
