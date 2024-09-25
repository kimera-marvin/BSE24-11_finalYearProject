// ignore_for_file: file_names, prefer_const_constructors

import 'package:final_app/ui/RPHH.dart';
import 'package:final_app/ui/acphhap.dart';
import 'package:final_app/ui/dry.dart';
import 'package:final_app/ui/practices.dart';
import 'package:flutter/material.dart';

class PHH extends StatefulWidget {
  final String username;
  final String email;
  final int currentIndex;
  final String phone;

  const PHH({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<PHH> createState() => _PHHState();
}

class _PHHState extends State<PHH> {
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
        width: MediaQuery.of(context).size.width,
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
                              "Post Harvest Handling",
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
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            "Post-Harvest Handling and Storage and storage information",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "The post-harvest processing activities contribute about 60% of the quality of green coffee beans. The post-harvest operations include pulping, processing, drying, hulling, cleaning, sorting, grading, storage, roasting, grinding, and cupping.\n\n"
                            "Harvesting is one of the critical steps within the coffee value chain where quality of coffee can be either compromised or maintained. The best quality coffee is obtained from “selective picking of red ripe cherries” and this is recommended for all coffee farmers. Selective picking is the best way to ensure cup quality. Well-harvested coffee maintains quality and attracts better prices on the market.",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Arabica Coffee harvesting best practices In order to harvest Arabica Coffee properly, farmers must stick to the following harvesting quality controls:",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "1. Selectively pick red ripe cherries in successive picking rounds. Ripe red cherries are selectively picked by hand.\n"
                            "2. Clean containers should be used while harvesting in order to avoid contamination and development of moulds.\n"
                            "3. Have a clean tarpaulin or hessian square under the coffee tree while harvesting. This will help the farmer to separate qualities of coffee...",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          // Continue with other Text widgets for content...
                          const SizedBox(height: 15),
                          Column(
                            children: [
                              const Text(
                                "Appearance of strip picked Arabica Coffee cherries",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Image.asset(
                                'assets/images/cherries.png',
                                width: 400,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Related Information\n",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                          ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Acphhap()),
                                  );
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Arabica Coffee post-harvest handling and processing ',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Dry()),
                                  );
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Dry processing',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Practices()),
                                  );
                                },
                                child: const ListTile(
                                  title: Text(
                                    '5 Arabica Coffee best storage practices',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ],
                      ),
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
                      builder: (context) => const RPHH(),
                    ),
                  );
                },
                child: Row(
                  children: const [
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
