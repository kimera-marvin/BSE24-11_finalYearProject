// ignore_for_file: avoid_print, sort_child_properties_last, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:final_app/ui/hPage.dart';
//import 'package:final_app/ui/login.dart';
import 'package:final_app/ui/profile.dart';
import 'package:final_app/ui/questions.dart';
import 'package:final_app/ui/articles.dart';
import 'package:final_app/ui/scan.dart';
import 'package:final_app/ui/upload.dart';
import 'package:flutter/cupertino.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController pageController = PageController();
  int pageIndex = 0;
  bool showOptions = false;

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(), // Add the drawer here
      body: PageView(
        children: <Widget>[
          HPage(),
          Profile(),
          Scanner(),
          Upload(),
          HPage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: CupertinoTabBar(
          currentIndex: pageIndex,
          onTap: onTap,
          activeColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 70, // Adjust the width of the container
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red, // Set the color of the circle here
                ),
                padding: EdgeInsets.all(8), // Adjust the padding as needed
                child: Column(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 35, // Set the color of the camera icon
                    ),
                    Text(
                      'Scan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12, // Adjust the font size as needed
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  final RenderBox overlay = Overlay.of(context)
                      .context
                      .findRenderObject() as RenderBox;
                  final RenderBox itemBox =
                      context.findRenderObject() as RenderBox;
                  final Offset itemPosition =
                      itemBox.localToGlobal(Offset.zero, ancestor: overlay);
                  final double iconWidth = itemBox.size.width;
                  final double iconHeight = itemBox.size.height;
                  const double menuHeight = 80.0;
                  const double menuWidth = 100.0;

                  // coordinates for the positioning of the pop up menu
                  final RelativeRect position = RelativeRect.fromRect(
                    Rect.fromPoints(
                      itemPosition.translate(
                          iconHeight, -menuWidth / 2 + iconWidth),
                      itemPosition.translate(menuWidth / 2 - iconWidth / 2,
                          iconHeight / 2 + menuHeight),
                    ),
                    Offset.zero & overlay.size,
                  );

                  showMenu(
                    context: context,
                    position: position,
                    items: [
                      PopupMenuItem(
                        child: Text(
                          "Learn more",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Articles()),
                            );
                          },
                          child: Text(
                            "Articles",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Questions()),
                            );
                          },
                          child: Text(
                            "FAQs",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                child: Icon(Icons.menu),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
