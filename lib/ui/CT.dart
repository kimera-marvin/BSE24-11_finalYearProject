// ignore_for_file: file_names

import 'package:final_app/ui/rct.dart';
import 'package:flutter/material.dart';

class CT extends StatefulWidget {
  final String username;
  final String email;
  final int currentIndex;
  final String phone;

  const CT({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<CT> createState() => _CTState();
}

class _CTState extends State<CT> {
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
                              "Coffee Types",
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
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1. ARABICA COFFEE",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    // color: Colors.green,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Background",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Text(
                                "Coffee is the second most traded tropical commodity in value in the world after oil. Coffee is Uganda’s major cash crop, both in terms of foreign exchange earnings and employment creation. Coffee is grown by 1.7 million households in addition to the industry employing over 5 million people through coffee value chain related activities\n\n"
                                "Coffee research is centralized and done under NARO through the National Coffee Research Institute (NACORI) at Kituza, Mukono District. Coffee extension is also centralized under the Ministry of Agriculture, Animal Industry and Fisheries (MAAIF) and offered through UCDA’s coffee specific extension in collaboration with other agencies such as National Agricultural Advisory Services (NAADS), Local Governments, coffee associations, private sector, NGOs, farmer organizations/cooperatives and individual farmers.\n",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              // SizedBox(height: 10),
                              const Text(
                                "Characteristics of Arabica Coffee and its importance",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown,
                                ),
                              ),
                              const Text(
                                "Arabica Coffee can grow up to 12m high in the wild; its leaves are dark green and oval or oblong. A bright red berry is produced which contains two seeds. The fruits contain less caffeine than Robusta. Arabica Coffee grows well in warm, temperate environments, usually at altitudes between 1,300 and 2,500 metres. The plants can grow to around 5 metres in height, although commercial plants are usually kept short. The leaves of the plant are dark green and it produces white flowers and deep red berries. Arabica Coffee farmers pick the berries and remove the flesh, leaving only the bean. The beans are then washed, dried before being sold. In Uganda the four recommended and authorized Elite Arabica Coffee varieties are SL 14, SL28, KP423 and KP162. Benefits of growing Arabica Coffee include:\n"
                                "\u2022 Quality and price are rated much higher and is\n   thus, more competitive on the international\n   market because of its superior quality.\n"
                                "\u2022 Most premium coffee is produced from 100%\n   Arabica beans.\n"
                                "\u2022 Can be well integrated with other crops on the\n   farm hence increasing returns to the farmer.\n"
                                "\u2022 It is a beverage with documented health\n   benefits.\n",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Arabica Coffee growing zones in Uganda",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown,
                                  ),
                                ),
                              ),
                              const Text(
                                "Arabica Coffee is one of the two major types grown in Uganda and accounts for 20% of Uganda’s coffee volume. It is grown in the highland areas on the slopes of Mount Elgon in the East, Mt. Rwenzori in the West and Mt. Muhabura in the South Western Region, Okoro highlands in West Nile plus other highland areas at an altitude between 1,200-2,500m above sea level. Arabica Coffee is an introduced crop originating from Ethiopia. Arabica Coffee is more competitive on the international market because of its superior quality and generally attracts better prices. Arabica Coffee is grown in 44 districts (51%), with 28 (32%) growing only Arabica while 15 (17%) in Uganda grow both Arabica and Robusta. Current production stands at about 4.2 million bags, 80% of which is Robusta and 20% is Arabica whose average productivity is 0.3kg of clean coffee per tree per year.\n",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    const Text(
                                      "MAP OF UGANDA SHOWING THE ARABICA COFFEE GROWING ZONES",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Image.asset(
                                      'assets/images/arabica.png',
                                      width: 650,
                                      height: 450,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(height: 25),
                                  ],
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
            // Positioned widget should be directly inside Stack
            Positioned(
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RCT(),
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
