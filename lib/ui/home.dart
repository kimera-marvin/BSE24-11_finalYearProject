// ignore_for_file: avoid_print, sort_child_properties_last, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_field, use_build_context_synchronously, deprecated_member_use

import 'dart:io';
import 'dart:typed_data';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_app/ui/hPage.dart';
import 'package:final_app/ui/history.dart';
//import 'package:final_app/ui/login.dart';
import 'package:final_app/ui/profile.dart';
import 'package:final_app/ui/questions.dart';
import 'package:final_app/ui/articles.dart';
// import 'package:final_app/ui/scan.dart';
import 'package:final_app/ui/upload.dart';
// import 'package:flutter/cupertino.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:focused_menu/focused_menu.dart';
// import 'package:focused_menu/modals.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Uint8List? _image;
  File? selectedIMage;
  late PageController pageController = PageController();
  int pageIndex = 0;
  bool showOptions = false;

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    if (pageIndex == 4) {
      // Show the menu instead of changing the page
      _showMenu();
    } else {
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

    // Coordinates for the positioning of the pop-up menu
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
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Articles(),
                ),
              ).then((_) => Navigator.pop(context));
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
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Questions(),
                ),
              ).then((_) => Navigator.pop(context));
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
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Container(
        color: Colors.blue,
        //function to help the bottom navigationbar be compatible on the iphone
        child: SafeArea(
          top: false,
          child: ClipRect(
            child: Scaffold(
              // drawer: const Drawer(), // Add the drawer here
              // extendBody: true,
              body: PageView(
                children: <Widget>[
                  HPage(),
                  Profile(),
                  History(),
                ],
                controller: pageController,
                onPageChanged: onPageChanged,
                physics: const NeverScrollableScrollPhysics(),
              ),
              bottomNavigationBar: 
              Theme(
                data: Theme.of(context).copyWith(
                  iconTheme: IconThemeData(color: Colors.white),
                ),
                child: CurvedNavigationBar(
                  backgroundColor: Colors.transparent,
                  color: Colors.blue,
                  buttonBackgroundColor: Colors.blue,
                  height: 65,
                  animationCurve: Curves.easeInOut,
                  animationDuration: Duration(milliseconds: 400),
                  onTap: onTap,
                  items: <Widget>[
                    Icon(Icons.home_outlined),
                    Icon(Icons.person_outlined),
                    GestureDetector(
                      onTap: () {
                        showImagePickerOption(context);
                      },
                      child: Container(
                        width: 70, // Adjust the width of the container
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red, // Set the color of the circle here
                        ),
                        padding:
                            EdgeInsets.all(8), // Adjust the padding as needed
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
                    Icon(Icons.alarm),
                    Icon(Icons.menu),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.blue[100],
      context: context,
      builder: (builder) {
        return Padding(
          padding: EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromGallery();
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text("Photo"),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text("Camera"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Photo
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Upload(image: _image),
      ),
    );
  }

  // Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Upload(image: _image),
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
