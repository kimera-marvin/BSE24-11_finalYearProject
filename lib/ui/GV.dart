// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GV extends StatefulWidget {
  final String username;
  final String email;
  final int currentIndex;
  final String phone;

  const GV({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<GV> createState() => _GVState();
}

class _GVState extends State<GV> {
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
  void dispose() {
    super.dispose();
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
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
        child: SingleChildScrollView(
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
                          "Guiding Videos",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // 1st vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=EXsxu7gV6gA",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/aVr.jpeg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What are the key differences between Arabica coffee and Robusta coffee in terms of taste and cultivation?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 2nd vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=2ucQwKlV5ek",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/arabicaCulti.jpeg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How is Arabica coffee cultivated in Uganda, and what are the major growing regions?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 3rd vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=g18IvtoOewA",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/robustaCulti.jpeg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How is Robusta coffee cultivated in Uganda, and what are the major growing regions?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 4th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=yn4hqv-1Puc",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/IMG-20240809-WA0067.jpg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What are the benefits and challenges of growing Arabica coffee compared to other varieties?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 5th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=v6WUImoAD3Q",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/IMG-20240809-WA0090.jpg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What are the benefits and challenges of growing Robusta coffee compared to other varieties?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 6th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=Mw0QfClmQg8",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/arabicaHarvesting.jpeg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What is the process of harvesting and processing Arabica coffee beans to ensure high quality?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 7th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=YFzDc1Ie54Q",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/robustaHarvesting.jpeg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What is the process of harvesting and processing Robusta coffee beans to ensure high quality?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 8th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=EKSnKufkapk",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/price.png",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How does the global coffee market impact the pricing and demand for Arabica coffee from Uganda?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 9th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=Nqx_bhPBFL4",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/IMG-20240809-WA0056.jpg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What are the environmental conditions required for growing high-quality Arabica coffee?",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
                    ),
                    const SizedBox(height: 20),
                    // 10th vid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            "https://www.youtube.com/watch?v=l673M6savFw",
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.all(color: Colors.blue, width: 1),
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            "assets/images/IMG-20240809-WA0046.jpg",
                                            width: 400,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        // const SizedBox(height: 15),
                                        const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Growing Coffee: Organic Farming Versus Non-Organic",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black,
                                            ),
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
