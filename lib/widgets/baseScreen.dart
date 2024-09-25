// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, sort_child_properties_last

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomCurvedNavigationBar extends StatelessWidget {
  final PageController pageController;
  final Function(int) onTap;
  final int currentIndex;
  final String username;
  final String email;

  const CustomCurvedNavigationBar({
    Key? key,
    required this.pageController,
    required this.onTap,
    required this.currentIndex,
    required this.username,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: const Color.fromARGB(255, 129, 103, 93),
      buttonBackgroundColor: const Color.fromARGB(255, 129, 103, 93),
      height: 65,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 400),
      index: currentIndex,
      items: const <Widget>[
        Icon(Icons.home_outlined),
        Icon(Icons.person_outlined),
        Icon(Icons.cloud_outlined),
        Icon(Icons.menu),
      ],
      onTap: onTap,
    );
  }
}
