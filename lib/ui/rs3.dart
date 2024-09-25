import 'package:flutter/material.dart';

class Rs3 extends StatefulWidget {
  const Rs3({super.key});

  @override
  State<Rs3> createState() => _Rs3State();
}

class _Rs3State extends State<Rs3> {
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
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Marking rows for planting coffee is important in establishing a coffee farm. The recommended row-direction is east/west direction because it makes most use of sunlight. The recommended spacing of Robusta Coffee by NaCORI is 10ft x10 ft. (3mx3m). This should result in about 450 plants per acre. However, trials are being done at NaCORI, Kituza, aiming at increasing tree density per acre. Results should be availed in the short to medium term, with attendant GAPs recommendations to guide farmers.\n",
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
