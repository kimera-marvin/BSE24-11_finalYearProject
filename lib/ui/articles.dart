import 'package:final_app/ui/Article10.dart';
import 'package:final_app/ui/Article2.dart';
import 'package:final_app/ui/Article3.dart';
import 'package:final_app/ui/Article4.dart';
import 'package:final_app/ui/Article5.dart';
import 'package:final_app/ui/Article6.dart';
import 'package:final_app/ui/Article7.dart';
import 'package:final_app/ui/Article8.dart';
import 'package:final_app/ui/Article9.dart';
import 'package:final_app/ui/Articles1.dart';
import 'package:flutter/material.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 55, 114, 167),
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
                        "Articles",
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
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.zero,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Article 1
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Articles1()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/article1.png",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Active TB vs CPA: what's the difference?",
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

                  // Article 2
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article2()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/article2.png",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Easy Signs to look out for Chronic Pulmonary Aspergilosis (CPA)",
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

                  // Article 3
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article3()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/article3.png",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 3",
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

                  // Article 4
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article4()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/article4.png",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 4",
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

                  // Article 5
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article5()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/article5.png",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 5",
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

                  // Article 6
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article6()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/article6.png",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 6",
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

                  // Article 7
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article7()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/IMG-20240319-WA0030.jpg",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 7",
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

                  // Article 8
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article8()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/IMG-20240319-WA0030.jpg",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 8",
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

                  // Article 9
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article9()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/IMG-20240319-WA0030.jpg",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 9",
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

                  // Article 10
                   const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Article10()),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
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
                                          "assets/images/IMG-20240319-WA0030.jpg",
                                          width: 400,
                                          height: 200,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // const SizedBox(height: 15),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Article 10",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
