import 'package:final_app/ui/Qn1.dart';
import 'package:final_app/ui/Qn2.dart';
import 'package:final_app/ui/Qn3.dart';
import 'package:final_app/ui/Qn4.dart';
import 'package:final_app/ui/Qn5.dart';
import 'package:final_app/ui/Qn6.dart';
import 'package:final_app/ui/Qn7.dart';
import 'package:final_app/ui/Qn8.dart';
import 'package:final_app/ui/Qn9.dart';
// import 'package:final_app/widgets/screen.dart';
// import 'package:final_app/ui/articles.dart';
// import 'package:final_app/ui/hPage.dart';
// import 'package:final_app/ui/profile.dart';
// import 'package:final_app/ui/scan.dart';
// import 'package:final_app/ui/upload.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  final String username;
  final String email;
  final int currentIndex;

  const Questions({
    Key? key,
    required this.username,
    required this.email,
    this.currentIndex = 4,
  }) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int pageIndex = 0;
  late String username;
  late String email;

  @override
  void initState() {
    super.initState();
    username = widget.username;
    email = widget.email;
  }

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
                        "FAQs",
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
            // const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.zero,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Qn1
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn1()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "What is chest X-ray and how does it work? ",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        ">",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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
                  // const SizedBox(height: 20),

                  // Qn2
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn2()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "What are the advantages and disadvantages of chest x-ray for TB and CPA diagnosis?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn3
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn3()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How accurate is chest X-ray for TB and CPA diagonis?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn4
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn4()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Why is chest X-ray used for TB and CPA diagnosis?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn5
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn5()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How can I prepare for a chest X-ray for TB and CPA diagnosis?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn6
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn6()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How to intepret the chest X-ray results for diagnosis?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn7
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn7()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How to improve the quality of the chest X-ray images?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn8
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn8()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How to improve the accuracy of the chest X-ray images?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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

                  // Qn9
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Qn9()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue, width: 1),
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
                                  child: const Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "How to Save results?",
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
                                          color:
                                              Color.fromARGB(255, 78, 129, 155),
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
      // bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  // Widget buildBottomNavigationBar() {
  //   return SizedBox(
  //     height: 80,
  //     child: CupertinoTabBar(
  //       currentIndex: pageIndex,
  //       onTap: (index) {
  //         switch (index) {
  //           case 0:
  //             Navigator.pushReplacement(
  //               context,
  //               MaterialPageRoute(builder: (context) => const HPage()),
  //             );
  //             break;
  //           case 1:
  //             Navigator.pushReplacement(
  //               context,
  //               MaterialPageRoute(builder: (context) => const Profile()),
  //             );
  //             break;
  //           case 2: // Questions screen, no navigation needed
  //             Navigator.pushReplacement(
  //               context,
  //               MaterialPageRoute(builder: (context) => const Scanner()),
  //             );
  //             break;
  //           case 3:
  //             Navigator.pushReplacement(
  //               context,
  //               MaterialPageRoute(builder: (context) => const Upload()),
  //             );
  //             break;
  //           case 4:
  //             Navigator.pushReplacement(
  //               context,
  //               MaterialPageRoute(builder: (context) => const HPage()),
  //             );
  //             break;
  //         }
  //         // pageController.jumpToPage(index);
  //       },
  //       activeColor: Colors.blue,
  //       items: [
  //         const BottomNavigationBarItem(
  //           icon: Icon(Icons.home_outlined),
  //         ),
  //         const BottomNavigationBarItem(
  //           icon: Icon(Icons.person_outlined),
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Container(
  //             width: 70, // Adjust the width of the container
  //             height: 70,
  //             decoration: const BoxDecoration(
  //               shape: BoxShape.circle,
  //               color: Colors.red, // Set the color of the circle here
  //             ),
  //             padding: const EdgeInsets.all(8), // Adjust the padding as needed
  //             child: const Column(
  //               children: [
  //                 Icon(
  //                   Icons.camera_alt,
  //                   color: Colors.white,
  //                   size: 35, // Set the color of the camera icon
  //                 ),
  //                 Text(
  //                   'Scan',
  //                   style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 12, // Adjust the font size as needed
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         const BottomNavigationBarItem(
  //           icon: Icon(Icons.alarm),
  //         ),
  //         BottomNavigationBarItem(
  //           icon: GestureDetector(
  //             onTap: () {
  //               final RenderBox overlay =
  //                   Overlay.of(context).context.findRenderObject() as RenderBox;
  //               final RenderBox itemBox =
  //                   context.findRenderObject() as RenderBox;
  //               final Offset itemPosition =
  //                   itemBox.localToGlobal(Offset.zero, ancestor: overlay);
  //               final double iconWidth = itemBox.size.width;
  //               final double iconHeight = itemBox.size.height;
  //               const double menuHeight = 80.0;
  //               const double menuWidth = 100.0;

  //               // coordinates for the positioning of the pop up menu
  //               final RelativeRect position = RelativeRect.fromRect(
  //                 Rect.fromPoints(
  //                   itemPosition.translate(
  //                       iconHeight, -menuWidth / 2 + iconWidth),
  //                   itemPosition.translate(menuWidth / 2 - iconWidth / 2,
  //                       iconHeight / 2 + menuHeight),
  //                 ),
  //                 Offset.zero & overlay.size,
  //               );

  //               showMenu(
  //                 context: context,
  //                 position: position,
  //                 items: [
  //                   const PopupMenuItem(
  //                     child: Text(
  //                       "Learn more",
  //                       style: TextStyle(
  //                         fontSize: 15,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.black,
  //                         decoration: TextDecoration.underline,
  //                       ),
  //                     ),
  //                   ),
  //                   PopupMenuItem(
  //                     child: TextButton(
  //                       onPressed: () {
  //                         Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                             builder: (context) => const Articles(),
  //                           ),
  //                         ).then((_) => Navigator.pop(context));
  //                       },
  //                       child: const Text(
  //                         "Articles",
  //                         style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.black,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   PopupMenuItem(
  //                     child: TextButton(
  //                       onPressed: () {
  //                         Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                             builder: (context) => const Questions(),
  //                           ),
  //                         ).then((_) => Navigator.pop(context));
  //                       },
  //                       child: const Text(
  //                         "FAQs",
  //                         style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.black,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               );
  //             },
  //             child: const Icon(Icons.menu),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
