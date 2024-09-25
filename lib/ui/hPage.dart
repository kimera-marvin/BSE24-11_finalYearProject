// ignore_for_file: file_names, avoid_print, prefer_const_constructors, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, sort_child_properties_last

// import 'package:final_app/ui/CD.dart';
import 'package:final_app/ui/CFM.dart';
import 'package:final_app/ui/CT.dart';
import 'package:final_app/ui/GV.dart';
import 'package:final_app/ui/PHH.dart';
// import 'package:final_app/ui/feedback.dart';
import 'package:final_app/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class HPage extends StatefulWidget {
  final String username;
  final String userEmail;
  final String phone;
  final String region;
  final String district;
  final String village;

  const HPage({
    Key? key,
    required this.username,
    required this.userEmail,
    required this.phone,
    required this.region,
    required this.district,
    required this.village,
  }) : super(key: key);

  @override
  _HPageState createState() => _HPageState();
}

class _HPageState extends State<HPage> {
  late final PageController _pageController;
  late final List<String> _imagePaths;
  int _currentPageIndex = 0;
  // int _currentIndex = 0;
  // final CarouselController _carouselController = CarouselController();
  late String username;
  late String userEmail;
  late String phone;
  int pageIndex = 0;
  final number = '0708373048';
  late String region;
  late String district;
  late String village;

  @override
  void initState() {
    super.initState();
    _imagePaths = [
      "assets/images/R.jpeg",
      "assets/images/IMG-20240809-WA0042.jpg",
      "assets/images/IMG-20240809-WA0078.jpg",
      "assets/images/IMG-20240809-WA0070.jpg",
      "assets/images/IMG-20240809-WA0073.jpg",
    ];
    _pageController = PageController();
    username = widget.username;
    userEmail = widget.userEmail;
    phone = widget.phone;
    region = widget.region;
    district = widget.district;
    village = widget.village;
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlide() {
    Timer.periodic(Duration(seconds: 10), (timer) {
      if (_currentPageIndex < _imagePaths.length - 1) {
        _currentPageIndex++;
      } else {
        _currentPageIndex = 0;
      }
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.9; // 80% of screen width
    double containerHeight = containerWidth * 0.6; // Aspect ratio of 3:2

    return Scaffold(
      body: Container(
        color: Colors.brown.withOpacity(0.1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // first part that has image slider
              Container(
                width: MediaQuery.of(context).size.width, // Width of the screen
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 70.0,
                  bottom: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.brown, // Background color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: containerHeight,
                            width: containerWidth,
                            child: PageView.builder(
                              controller: _pageController,
                              itemCount: _imagePaths.length,
                              itemBuilder: (context, index) {
                                return
                                    // GestureDetector(
                                    //   onTap: () => _navigateToScreen(index),
                                    //   child:
                                    ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    _imagePaths[index],
                                    fit: BoxFit.cover,
                                    width: containerWidth,
                                    height: containerHeight,
                                  ),
                                  // ),
                                );
                              },
                              onPageChanged: (index) {
                                setState(() {
                                  _currentPageIndex = index;
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              _imagePaths.length,
                              (index) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                width: 13,
                                height: 13,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentPageIndex == index
                                      ? Colors.white
                                      : Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22),

                    // calling
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Don't know what to do? ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        GestureDetector(
                          onTap: () async {
                            // direct phone call
                            await FlutterPhoneDirectCaller.callNumber(number);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Row(
                              children: const [
                                SizedBox(width: 5),
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                // SizedBox(width: 5),
                                Text(
                                  "  Need help?",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Adding containers, 2 per row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenWithNavigationBar(
                            child: CT(
                              username: username,
                              email: userEmail,
                              phone: phone,
                            ),
                            currentIndex: pageIndex,
                            username: username,
                            phone: phone,
                            email: userEmail,
                            region: region,
                            district: district,
                            village: village,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: containerWidth * 0.4,
                      height: containerHeight * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/IMG-20240809-WA0071.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Text(
                                "Coffee\nTypes           ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenWithNavigationBar(
                            child: CFM(
                              username: username,
                              email: userEmail,
                              phone: phone,
                            ),
                            currentIndex: pageIndex,
                            username: username,
                            email: userEmail,
                            phone: phone,
                            region: region,
                            district: district,
                            village: village,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: containerWidth * 0.4,
                      height: containerHeight * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/IMG-20240809-WA0069.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Text(
                                "Coffee Farm\nManagement",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add spacing between rows
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenWithNavigationBar(
                            child: PHH(
                              username: username,
                              email: userEmail,
                              phone: phone,
                            ),
                            currentIndex: pageIndex,
                            username: username,
                            email: userEmail,
                            phone: phone,
                            region: region,
                            district: district,
                            village: village,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: containerWidth * 0.4,
                      height: containerHeight * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/IMG-20240809-WA0014.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Text(
                                "Post harvest\nhandling",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenWithNavigationBar(
                            child: GV(
                              username: username,
                              email: userEmail,
                              phone: phone,
                            ),
                            currentIndex: pageIndex,
                            username: username,
                            email: userEmail,
                            phone: phone,
                            region: region,
                            district: district,
                            village: village,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: containerWidth * 0.4,
                      height: containerHeight * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/IMG-20240809-WA0010.jpg',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Text(
                                "Guiding\nvideos          ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
