import 'package:final_app/ui/home.dart';
import 'package:final_app/widgets/baseScreen.dart';
import 'package:flutter/material.dart';

class ScreenWithNavigationBar extends StatelessWidget {
  final Widget child;
  final int currentIndex;
  final String username;
  final String email;

  const ScreenWithNavigationBar({
    Key? key,
    required this.child,
    required this.currentIndex,
    required this.username,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: CustomCurvedNavigationBar(
        pageController: PageController(initialPage: currentIndex),
        onTap: (int index) {
          if (index == 4) {
            Navigator.pop(context);
          } else {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) {
                return Home(
                  username: username,
                  email: email,
                  currentIndex: index,
                ); // Adjust based on your needs
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
