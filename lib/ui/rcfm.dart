import 'package:final_app/ui/rinter.dart';
import 'package:final_app/ui/rmono.dart';
import 'package:final_app/ui/rs1.dart';
import 'package:final_app/ui/rs2.dart';
import 'package:final_app/ui/rs3.dart';
import 'package:final_app/ui/rs4.dart';
import 'package:final_app/ui/rs5.dart';
import 'package:final_app/ui/rs6.dart';
import 'package:final_app/ui/rs8.dart';
import 'package:final_app/ui/step10.dart';
import 'package:final_app/ui/step8.dart';
import 'package:flutter/material.dart';

class RCFM extends StatefulWidget {
  const RCFM({super.key});

  @override
  State<RCFM> createState() => _RCFMState();
}

class _RCFMState extends State<RCFM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coffee Farm Management",
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  // color: Colors.brown,
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                          16.0), // Adjust the padding value as needed
                      child: Column(
                        children: [
                          const Text(
                            "ROBUSTA COFFEE AGRO-ECOLOGICAL REQUIREMENTS AND PRODUCTION SYSTEM",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Introduction",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // SizedBox(height: 10),
                          const Text(
                            "Robusta Coffee is more tolerant to pest infestation and is well adapted to warm and humid equatorial climates. And when handled and processed properly, it can be a product for specialty markets, fetching premium prices on the international market",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Soil and Land Requirements",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // SizedBox(height: 10),
                          const Text(
                            " Robusta Coffee can grow on different soil types. But for best root establishment and high yields, it requires a fertile, well aerated, free draining, slightly acidic, deep soil with reasonable humus content and a minimum depth of 1-1.5m in well moist and 3m in drier areas. Robusta does not tolerate water logging or ‘wet feet’. The best or ideal soils are volcanic red earth or sandy loams with good structure and texture and rich in organic matter. Avoid heavy clay or poor-draining soils, for good productivity. In addition, the soil should be just slightly acidic, with a pH range of 5.5 – 6.5, within which it would be well supplied with all the essential major plant nutrients. A pH level below 5.5 will limit crop performance and at this level, adequate liming must be done to correct the pH levels back to a suitable range.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Altitude",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            " Robusta Coffee production requires an altitude range of 900-1500 metres above sea level. Different altitudes produce different cup profiles. Robusta Coffee grown at higher altitude tends to be more acidic and complex while that grown at lower elevation tends to be more intensely flavored. Uganda is a classic case showing differences in elevation. It produces relatively high altitude Robusta Coffee at an average of 1200m above sea level",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Temperature",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "Robusta Coffee requires warmer temperatures ranging from 22° - 28°C (71 - 82°F). It is much more tolerant to hot conditions compared to Arabica Coffee. Temperatures higher than 300C can cause a range of physiological problems, including flower abortion poor fruit setting, development and premature ripening. At this relatively high temperature, photosynthesis is also reduced. On the other hand, frost damage can occur if temperatures fall around 00C or below.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Rainfall and Humidity",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "Robusta requires a rainfall range of 1,200 mm to 1,800 mm, which is well distributed over a period of 9 months. Both the total amount and the distribution pattern are important. Unless there is regular rainfall, young newly planted coffee seedlings should be irrigated (or hand watered) atleast twice a week to ensure that the seedlings get established. Also, where there is inadequate rainfall during growth, supplementary watering/irrigation to sustain continuous growth, induce uniform flowering and good fruit formation should be carried out.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Wind Effects",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            " Strong winds have an adverse effect on coffee growth because they can cause excessive water evaporation and tree breakage and increase the demand for irrigation. Therefore in especially windy areas it is desirable to establish windbreakers along borders of the coffee plantation",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Center(
                            child: Column(
                              children: [
                                const Text(
                                  "An illustration of Robusta Coffee monocrop at a spacing of 10 x 10ft",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Image.asset(
                                  'assets/images/windeffects.png',
                                  width: 400,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Robusta Coffee Production Systems",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          const Text(
                            "The farmer needs to know the kind of system he/she needs in order to plan for field activities accordingly. Two types exist i.e. mono cropping (pure stand) and intercropping (mixed stand).",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Aligns the containers evenly spaced in the row
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const RMono(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width:
                                          100, // Width of the circular container
                                      height:
                                          100, // Height of the circular container
                                      decoration: BoxDecoration(
                                        shape: BoxShape
                                            .circle, // Makes the container circular
                                        border: Border.all(
                                          color: Colors.brown,
                                          width: 3.0,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/mono.webp',
                                          ),
                                          fit: BoxFit
                                              .cover, // Fills the container with the image
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      height:
                                          8), // Adds some space between the container and the text
                                  const Text(
                                    '1. Monocropping\nSystem',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Rinter(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width:
                                          100, // Width of the circular container
                                      height:
                                          100, // Height of the circular container
                                      decoration: BoxDecoration(
                                        shape: BoxShape
                                            .circle, // Makes the container circular
                                        border: Border.all(
                                          color: Colors.brown,
                                          width: 3.0,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/inter.webp',
                                          ),
                                          fit: BoxFit
                                              .cover, // Fills the container with the image
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                      height:
                                          8), // Adds some space between the container and the text
                                  const Text(
                                    '2. Intercropping\nSystem', // Text under the second container
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            "ROBUSTA COFFEE FARM ESTABLISHMENT AND FIELD MANAGEMENT PRACTICES",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Introduction",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            " Robusta Coffee farm establishment starts with land preparation whose objectives is to facilitate maximum water infiltration and minimal soil movement, safe disposal of surplus water and simplification of irrigation works. Land preparation also facilitates the establishment of a good road system within the plantation. Once land is cleared and coffee is planted, attention shifts to good management practices. Poor field management significantly contributes to low productivity in coffee and should be avoided\n",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Coffee Farm Establishment ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Text(
                            "The area to be planted with coffee must be prepared atleast 1 year before the coffee seedlings are planted out. There are 9 distinct steps to follow:",
                          ),
                          // Step 1
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs1()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "1.	Clear the site",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 2
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs2()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "2.	Plant Windbreakers",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 3
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs3()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "3.	Mark out the Rows",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 4
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs4()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "4.	Establish Shade Trees",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 5
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs5()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "5.	Set-up Water Delivery Systems",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // step 6
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs6()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "6.	Dig holes and backfill ",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 7
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Step8()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "7.	Select good planting materials",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 8
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Rs8()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "8.	Planting out",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Step 9
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Step10()),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.brown, width: 1),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          // left: 5.0,
                                          // right: 15.0,
                                          top: 10.0,
                                          bottom: 12.0,
                                        ),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "9.	Water the seedlings",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              ">",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 78, 129, 155),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
