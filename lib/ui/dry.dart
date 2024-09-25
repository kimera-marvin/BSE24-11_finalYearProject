import 'package:flutter/material.dart';

class Dry extends StatefulWidget {
  const Dry({super.key});

  @override
  State<Dry> createState() => _DryState();
}

class _DryState extends State<Dry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dry processing ",
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
                      "Dry processing of Arabica Coffee also known Drugar involves the drying of fresh cherries the cherries immediately after harvesting without removing the pulp to produce what is commonly referred to as Kiboko coffee. The dry Kiboko Coffee is dried as FAQ and exported as Drugar (Dry Uganda Arabic)\n\n"
                      "The process of drying Kiboko coffee may take 14 - 30 days depending on weather conditions. Dried Kiboko coffee must have moisture content of 13-14% before undergoing processing at a primary dry processing mill into FAQ. When fully dried, Kiboko coffee should be black in color, rattles in the shell, must have no smell and free of mould and extraneous matter such as stones.\n\n"
                      "Out-turn ranging between 50-60 % is common for Kiboko Coffee. However, majority of Arabica Coffee is washed except for Kasese and South Western Uganda where it is dried as Kiboko and eventually sold at export level as Dry Ugandan Arabica (Drugar).\n\n"
                      "Proper drying leads to good quality of coffee and better price for the product. Always dry coffee on tarpaulins clean mats, trays with a mesh base, concrete floors or cemented floor. Cherry must be turned with a rake to allow uniform drying and should be covered at night and during rainfall. During the first two or three days of drying ensure that the layer is as thin as possible (not more than 4 cm or 1.5 ‘’thick) to facilitate uniform drying of the cherries.",
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
                            "The dry Kiboko Arabica Coffee being dried on tarpaulin",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/kiboko.png',
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
                            "Large scale solar drier",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/drier.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.contain,
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
