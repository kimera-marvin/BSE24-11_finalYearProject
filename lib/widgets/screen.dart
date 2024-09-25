// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, no_leading_underscores_for_local_identifiers

// import 'dart:io';

import 'package:final_app/ui/home.dart';
// import 'package:final_app/ui/upload.dart';
import 'package:final_app/widgets/baseScreen.dart';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

class ScreenWithNavigationBar extends StatelessWidget {
  final Widget child;
  final int currentIndex;
  final String username;
  final String email;
  final String phone;
  final String region;
  final String district;
  final String village;

  const ScreenWithNavigationBar({
    Key? key,
    required this.child,
    required this.currentIndex,
    required this.username,
    required this.email,
    required this.phone,
    required this.region,
    required this.district,
    required this.village,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: CustomCurvedNavigationBar(
        pageController: PageController(initialPage: currentIndex),
        username: username,
        email: email,
        onTap: (int index) {
          if (index == 3) {
            Navigator.pop(context);
          } else {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) {
                return Home(
                  username: username,
                  phone: phone,
                  email: email,
                  region: region,
                  district: district,
                  village: village,
                  currentIndex: index,
                );
              }),
              (Route<dynamic> route) => false,
            );
          }
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
