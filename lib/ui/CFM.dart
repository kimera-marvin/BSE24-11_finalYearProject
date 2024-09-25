// ignore_for_file: file_names

import 'package:final_app/ui/inter.dart';
import 'package:final_app/ui/mono.dart';
import 'package:final_app/ui/rcfm.dart';
import 'package:final_app/ui/step1.dart';
import 'package:final_app/ui/step10.dart';
import 'package:final_app/ui/step2.dart';
import 'package:final_app/ui/step3.dart';
import 'package:final_app/ui/step4.dart';
import 'package:final_app/ui/step5.dart';
import 'package:final_app/ui/step6.dart';
import 'package:final_app/ui/step7.dart';
import 'package:final_app/ui/step8.dart';
import 'package:final_app/ui/step9.dart';
import 'package:flutter/material.dart';

class CFM extends StatefulWidget {
  final String username;
  final String email;
  final int currentIndex;
  final String phone;

  const CFM({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<CFM> createState() => _CFMState();
}

class _CFMState extends State<CFM> {
  late String username;
  late String email;
  late String phone;

  @override
  void initState() {
    super.initState();
    username = widget.username;
    email = widget.email;
    phone = widget.phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.zero,
                    ),
                    child: const Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                            top: 70.0,
                            bottom: 20.0,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Coffee Farm Management",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                                "ARABICA COFFEE FARM MANAGEMENT INFORMATION ",
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
                                  "Soil requirements",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              // SizedBox(height: 10),
                              const Text(
                                "Arabica Coffee can grow on different soils types but does well on well-drained volcanic soils. For best root establishment, it requires a fertile, well aerated, free draining, slightly acidic, deep soil with reasonable humus content and a minimum depth of about 1m before roots reach an impermeable soil. Arabica Coffee will not tolerate water logging or ‘wet feet’. ",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "The best or ideal soils are volcanic red earth or sandy loams with good structure and texture and rich in organic matter. Avoid heavy clay or poor-draining soils, for good productivity. In addition, the soil should be just slightly acidic, with a pH range of 5.5 – 6.5 within which it would be well supplied with all the essential major plant nutrients. Low or high pH will limit crop performance.",
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
                                "An elevation between 1,200m and 2,500m above sea level is ideal for Arabica Coffee growing. Low elevation Arabica Coffee does not possess the best quality required by the world markets. Based on cup tests, areas within 1,500 to 2,500m clearly produce superior quality/premium coffee. High elevation improves the quality of the bean and potential cupping quality. Due to a delay in ripening caused by cooler weather associated with higher altitudes, the inherent characteristics of acidity, aroma and bold bean can fully develop. Bold bean is classified as being between large and medium sized bean, with its width/length ratio bigger than that of a large bean.",
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
                                "Since most Arabica growing areas in Uganda are above 1,500m above sea level, the potential to produce unique Arabica Coffee for specialty markets is high. Arabica Coffee prefers a cool temperature with an optimum daily temperature range of 15°24°C (59°-75°F). Temperatures higher than 24°C (75°F) cause plant stress which leads to a cessation of photosynthesis. Mean temperatures of less than 15°C (59°F) also limit plant growth and are considered sub-optimal. As Arabica Coffee is susceptible to frost damage, use of shade trees to reduce the incidence is recommended.",
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
                                "Arabica Coffee requires a rainfall range of 1, 2001, 800mm per annum, which is well distributed over a period of 9 months. Both the total amount and the distribution pattern are important. Unless there is regular rainfall, young newly planted coffee trees should be irrigated (or hand watered if irrigation is not available) at least twice a week to ensure that the newly planted seedlings get established. Also, if rain is inadequate during growth, supplemental watering/ irrigation to induce uniform flowering and good fruit formation should be carried out. A fairly regular/ frequent rainfall pattern throughout the berry development stage is required.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Arabica Coffee production systems",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
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
                                              builder: (context) =>
                                                  const Mono(),
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
                                              builder: (context) =>
                                                  const Inter(),
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
                                "ARABICA COFFEE FARM ESTABLISHMENT AND FIELD MANAGEMENT PRACTICES",
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
                                  "PREAMBLE",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Text(
                                "Arabica Coffee farm establishment starts with planning the farm layout where areas for coffee gardens, road network, drying yard, farm houses for family and workers and a coffee store are properly laid out. Then land preparation whose objectives are to facilitate maximum water infiltration and minimal soil movement, safe disposal of surplus water and simplification of irrigation works commences. Once land is cleared and coffee is planted, attention shifts to good management practices. Poor field management significantly contributes to low productivity in coffee. Farmers should therefore make appropriate investments in recommended best field management practices for maximum productivity. The area to be planted with coffee must be prepared at least 1 year before the coffee seedlings are planted out.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "STEPS FOR THE BEST COFFEE FARM:",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              // Step 1
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Step1()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "1.	Plan the Farm layout",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step2()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "2.	Clear the site",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step3()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "3.	Plant windbreakers",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step4()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "4.	Mark out the rows",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step5()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "5.	Establishing shade trees",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                              // Step 6
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Step6()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "6. Set up water delivery systems",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step7()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "7.	Dig holes",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step8()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "8.	Select good planting materials",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                        builder: (context) => const Step9()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "9.	Planting out",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                              // Step 10
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
                                    border: Border.all(
                                        color: Colors.brown, width: 1),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "10.	Water the seedlings",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                              const SizedBox(height: 35),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Positioned widget should be directly inside Stack
            Positioned(
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RCFM(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'Robusta Coffee',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
