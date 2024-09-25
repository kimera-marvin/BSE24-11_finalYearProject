// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, sort_child_properties_last, prefer_const_constructors, avoid_print

import 'dart:io';
import 'dart:typed_data';

import 'package:final_app/ui/hPage.dart';
import 'package:final_app/ui/history.dart';
import 'package:final_app/ui/login.dart';
import 'package:final_app/ui/privacy.dart';
import 'package:final_app/ui/profile.dart';
import 'package:final_app/ui/terms.dart';
import 'package:final_app/widgets/baseScreen.dart';
import 'package:final_app/widgets/screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String username;
  final String email;
  final String phone;
  final String region;
  final String district;
  final String village;
  final int currentIndex;

  const Home({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    required this.region,
    required this.district,
    required this.village,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: unused_field
  Uint8List? _image;
  File? selectedIMage;
  late PageController pageController = PageController();
  int pageIndex = 0;
  bool showOptions = false;
  late String username;
  late String email;
  late String phone;
  late String region;
  late String district;
  late String village;

  @override
  void initState() {
    super.initState();
    username = widget.username;
    email = widget.email;
    phone = widget.phone;
    region = widget.region;
    district = widget.district;
    village = widget.village;
    pageIndex = widget.currentIndex;
    pageController = PageController(initialPage: pageIndex);
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    if (pageIndex == 3) {
      setState(() {
        this.pageIndex = 3;
      });
      _showMenu();
    } else {
      setState(() {
        this.pageIndex = pageIndex;
      });
      pageController.jumpToPage(pageIndex);
    }
  }

  void _showMenu() {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RenderBox itemBox = context.findRenderObject() as RenderBox;
    final Offset itemPosition =
        itemBox.localToGlobal(Offset.zero, ancestor: overlay);
    final double iconWidth = itemBox.size.width;
    final double iconHeight = itemBox.size.height;
    const double menuHeight = 80.0;
    const double menuWidth = 100.0;

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        itemPosition.translate(iconHeight, menuWidth * 2 + iconWidth),
        itemPosition.translate(
            menuWidth / 2 - iconWidth / 2, iconHeight / 2 + menuHeight),
      ),
      Offset.zero & overlay.size,
    );

    showMenu(
      context: context,
      position: position,
      items: [
        const PopupMenuItem(
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
                  builder: (context) => ScreenWithNavigationBar(
                    child: Terms(
                      username: username,
                      phone: phone,
                      email: email,
                      region: region,
                      district: district,
                      village: village,
                    ),
                    currentIndex: pageIndex,
                    username: username,
                    phone: phone,
                    email: email,
                    region: region,
                    district: district,
                    village: village,
                  ),
                ),
              ).then((_) {
                Navigator.pop(context); // Close the menu
              });
            },
            child: const Text(
              "Terms and Conditions",
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
                  builder: (context) => ScreenWithNavigationBar(
                    child: Privacy(
                      username: username,
                      phone: phone,
                      email: email,
                      region: region,
                      district: district,
                      village: village,
                    ),
                    currentIndex: pageIndex,
                    username: username,
                    phone: phone,
                    email: email,
                    region: region,
                    district: district,
                    village: village,
                  ),
                ),
              ).then((_) {
                Navigator.pop(context); // Close the menu
              });
            },
            child: const Text(
              "Privacy Policy",
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
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              });
            },
            child: const Row(
              children: [
                Icon(
                  Icons.logout,
                  size: 30,
                ),
                SizedBox(width: 5),
                Text(
                  'Logout',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Container(
        color: Colors.brown,
        child: SafeArea(
          top: false,
          child: ClipRect(
            child: Scaffold(
              body: PageView(
                children: <Widget>[
                  HPage(
                    username: username,
                    userEmail: widget.email,
                    phone: phone,
                    region: region,
                    district: district,
                    village: village,
                  ),
                  Profile(
                    username: username,
                    email: email,
                    phone: phone,
                    region: region,
                    district: district,
                    village: village,
                  ),
                  History(
                    username: username,
                    userEmail: widget.email,
                    phone: phone,
                    region: region,
                    district: district,
                    village: village,
                  ),
                  Placeholder(),
                ],
                controller: pageController,
                onPageChanged: onPageChanged,
                physics: const NeverScrollableScrollPhysics(),
              ),
              bottomNavigationBar: CustomCurvedNavigationBar(
                pageController: pageController,
                onTap: onTap,
                currentIndex: pageIndex,
                username: username,
                email: email,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Really ??"),
            content: const Text("Do you want to close the app??"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("No"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text("Yes"),
              ),
            ],
          );
        });

    return exitApp ?? false;
  }
}
