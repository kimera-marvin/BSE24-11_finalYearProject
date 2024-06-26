// ignore_for_file: file_names, avoid_print, prefer_const_constructors, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, sort_child_properties_last

// import 'package:final_app/ui/questions.dart';
import 'package:final_app/ui/Article2.dart';
import 'package:final_app/ui/Article3.dart';
import 'package:final_app/ui/Article4.dart';
import 'package:final_app/ui/Articles1.dart';
import 'package:final_app/ui/articles.dart';
import 'package:final_app/ui/history.dart';
import 'package:final_app/ui/questions.dart';
import 'package:final_app/widgets/screen.dart';
// import 'package:final_app/ui/readMore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'package:final_app/widgets/database_constants.dart';

class HPage extends StatefulWidget {
  final String username;
  final String userEmail;

  const HPage({
    Key? key,
    required this.username,
    required this.userEmail,
  }) : super(key: key);

  @override
  _HPageState createState() => _HPageState();
}

class _HPageState extends State<HPage> {
  late final PageController _pageController;
  late final List<String> _imagePaths;
  int _currentPageIndex = 0;
  int _currentIndex = 0;
  final CarouselController _carouselController = CarouselController();
  late String username;
  late String userEmail;
  late Future<int> _totalCountFuture;
  late Future<int> _totalTB;
  late Future<int> _totalCPA;
  late Future<int> _totalNo;

  @override
  void initState() {
    super.initState();
    _imagePaths = [
      "assets/images/WhatsApp Image 2024-06-05 at 00.27.15_b601d0ad.jpg",
      "assets/images/WhatsApp Image 2024-06-05 at 00.27.15_1d323fd7.jpg",
      "assets/images/WhatsApp Image 2024-06-05 at 09.12.57_14b0891d.jpg",
    ];
    _pageController = PageController();
    username = widget.username;
    userEmail = widget.userEmail;
    _startAutoSlide();
    _totalCountFuture = fetchTotalCount(widget.userEmail);
    _totalTB = fetchTB(widget.userEmail);
    _totalCPA = fetchCPA(widget.userEmail);
    _totalNo = fetchNo(widget.userEmail);
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

  final List<String> images = [
    "assets/images/article1.png",
    "assets/images/article2.png",
    "assets/images/article3.png",
    "assets/images/article4.png",
  ];

  final List<String> captions = [
    "Active TB vs CPA: what's the difference?",
    "Easy signs to look outfor Chronic Pulmonary Aspergilosis (CPA)",
    'The Radiological  diagnosis of CPA',
    'Treatment for CPA',
  ];

  void _navigateToArticlePage(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Articles1()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Article2()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Article3()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Article4()),
        );
        break;
      default:
        break;
    }
  }

  void _navigateToScreen(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenWithNavigationBar(
              child: History(
                username: username,
                userEmail: widget.userEmail,
              ),
              currentIndex: 3,
              username: username,
              email: userEmail,
            ),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenWithNavigationBar(
              child: Articles(
                username: username,
                email: userEmail,
              ),
              currentIndex: 4,
              username: username,
              email: userEmail,
            ),
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenWithNavigationBar(
              child: Questions(
                username: username,
                email: userEmail,
              ),
              currentIndex: 4,
              username: username,
              email: userEmail,
            ),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.7; // 80% of screen width
    double containerHeight = containerWidth * 1.5; // Aspect ratio of 3:2

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // first part that has image slider
            // SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width, // Width of the screen
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 70.0,
                bottom: 20.0,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 55, 114, 167), // Background color
                borderRadius: BorderRadius.zero,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      // "\n"
                      "Your AI-Powered TB\n"
                      " and CPA Diagnosis",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                              return GestureDetector(
                                onTap: () => _navigateToScreen(index),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    _imagePaths[index],
                                    fit: BoxFit.cover,
                                    width: containerWidth,
                                    height: containerHeight,
                                    // width: 20,
                                  ),
                                ),
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
                ],
              ),
            ),
            // after the pictures part
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.zero,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 10.0,
                      bottom: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Early Detection\n"
                        "Makes a Difference",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  // part for reading more
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11.0),
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  top: 10.0,
                                  bottom: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors
                                      .lightBlueAccent, // Background color
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        "Our scanner can help you to "
                                        "distinguish between Active TB "
                                        "and CPA",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Icon(
                                      Icons.fingerprint_outlined,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 30.0,
                                    right: 20.0,
                                    // top: 10.0,
                                    bottom: 15.0,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      " Chronic pulmonary aspergillosis (CPA) may mimic pulmonary tuberculosis (PTB).The two diseases are clinically indistinguishable and may result in CPA misdiagnosed as PTB or vice versa. Although PTB is largely recognised as a differential diagnosis of CPA and often ruled out prior to CPA diagnosis, the reverse is uncommon.",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(color: Colors.blue, width: 1),
                                  // color: Colors.lightBlueAccent,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ScreenWithNavigationBar(
                                          child: Questions(
                                            username: username,
                                            email: userEmail,
                                          ),
                                          currentIndex: 4,
                                          username: username,
                                          email: userEmail,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 90.0),
                                    child: Text(
                                      "Read more",
                                      style: TextStyle(
                                        fontSize: 18,
                                        // fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 127, 171, 207),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // part to check how many patients have been tested varying in different categories
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 9.0),
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 5.0,
                                  // right: 15.0,
                                  top: 10.0,
                                  bottom: 12.0,
                                ),
                                child: Row(
                                  children: [
                                    // Expanded(
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      ),
                                      padding: EdgeInsets.all(35),
                                      child: FutureBuilder<int>(
                                        future: _totalCountFuture,
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return SizedBox(
                                              width: 10.0,
                                              height: 10.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(Colors.blue),
                                              ),
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text(
                                                'Error: ${snapshot.error}');
                                          } else if (!snapshot.hasData) {
                                            return Text('No data available');
                                          } else {
                                            return Text(
                                              '${snapshot.data}',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                    // ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "\u2022",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Without Active TBorCPA",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  // fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            FutureBuilder<int>(
                                              future: _totalNo,
                                              builder: (context, snapshot) {
                                                if (snapshot.connectionState ==
                                                    ConnectionState.waiting) {
                                                  return SizedBox(
                                                    width: 10.0,
                                                    height: 10.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors.blue),
                                                    ),
                                                  );
                                                } else if (snapshot.hasError) {
                                                  return Text(
                                                      'Error: ${snapshot.error}');
                                                } else if (!snapshot.hasData) {
                                                  return Text(
                                                      'No data available');
                                                } else {
                                                  return Text(
                                                    '${snapshot.data}',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 15),
                                        Row(
                                          children: [
                                            Text(
                                              "\u2022",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "With Active TB",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  // fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 70),
                                            FutureBuilder<int>(
                                              future: _totalTB,
                                              builder: (context, snapshot) {
                                                if (snapshot.connectionState ==
                                                    ConnectionState.waiting) {
                                                  return SizedBox(
                                                    width: 10.0,
                                                    height: 10.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors.blue),
                                                    ),
                                                  );
                                                } else if (snapshot.hasError) {
                                                  return Text(
                                                      'Error: ${snapshot.error}');
                                                } else if (!snapshot.hasData) {
                                                  return Text(
                                                      'No data available');
                                                } else {
                                                  return Text(
                                                    '${snapshot.data}',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 15),
                                        Row(
                                          children: [
                                            Text(
                                              "\u2022",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "With CPA",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  // fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 98),
                                            FutureBuilder<int>(
                                              future: _totalCPA,
                                              builder: (context, snapshot) {
                                                if (snapshot.connectionState ==
                                                    ConnectionState.waiting) {
                                                  return SizedBox(
                                                    width: 10.0,
                                                    height: 10.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors.blue),
                                                    ),
                                                  );
                                                } else if (snapshot.hasError) {
                                                  return Text(
                                                      'Error: ${snapshot.error}');
                                                } else if (!snapshot.hasData) {
                                                  return Text(
                                                      'No data available');
                                                } else {
                                                  return Text(
                                                    '${snapshot.data}',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  );
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
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
                  SizedBox(height: 20),

                  // part for articles
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 10.0,
                      bottom: 15.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Interesting Articles",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  // part ofarticles which involves images
                  Center(
                    child: Column(
                      children: [
                        CarouselSlider.builder(
                          itemCount: images.length,
                          carouselController: _carouselController,
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 15),
                            viewportFraction: 0.8,
                            // Define indicator
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                          itemBuilder:
                              (BuildContext context, int index, int realIndex) {
                            return GestureDetector(
                              onTap: () {
                                _navigateToArticlePage(index);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      captions[index],
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(images.length, (index) {
                            // int index = images.indexOf(url);
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            );
                          }),
                        ),

                        // button for read more articles
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.blue, width: 1),
                              // color: Colors.lightBlueAccent,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ScreenWithNavigationBar(
                                      child: Articles(
                                        username: username,
                                        email: userEmail,
                                      ),
                                      currentIndex: 4,
                                      username: username,
                                      email: userEmail,
                                    ),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 90.0),
                                child: Text(
                                  "Read other articles",
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 28, 95, 149),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<int> fetchTotalCount(String userEmail) async {
  final client = OdooClient(DATABASE_URL);
  await client.authenticate(
      DATABASE_NAME, DATABASE_ACCESS_LOGIN, DATABASE_ACCESS_PASSWORD);

  try {
    var response = await client.callKw({
      'model': 'patient.image',
      'method': 'search_count',
      'args': [
        [
          ['user_email', '=', userEmail]
        ],
      ],
      'kwargs': {}
    }).timeout(const Duration(seconds: 100));

    if (response != null && response is int) {
      return response;
    } else {
      throw Exception('Invalid response format');
    }
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack trace: $stack');
    return 0;
  }
}

Future<int> fetchTB(String userEmail) async {
  final client = OdooClient(DATABASE_URL);
  await client.authenticate(
      DATABASE_NAME, DATABASE_ACCESS_LOGIN, DATABASE_ACCESS_PASSWORD);

  try {
    var response = await client.callKw({
      'model': 'patient.image',
      'method': 'search_count',
      'args': [
        [
          ['user_email', '=', userEmail],
          [
            'result_predicted',
            '=',
            'TB',
          ],
        ],
      ],
      'kwargs': {}
    }).timeout(const Duration(seconds: 100));

    if (response != null && response is int) {
      return response;
    } else {
      throw Exception('Invalid response format');
    }
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack trace: $stack');
    return 0;
  }
}

Future<int> fetchCPA(String userEmail) async {
  final client = OdooClient(DATABASE_URL);
  await client.authenticate(
      DATABASE_NAME, DATABASE_ACCESS_LOGIN, DATABASE_ACCESS_PASSWORD);

  try {
    var response = await client.callKw({
      'model': 'patient.image',
      'method': 'search_count',
      'args': [
        [
          ['user_email', '=', userEmail],
          [
            'result_predicted',
            '=',
            'CPA',
          ],
        ],
      ],
      'kwargs': {}
    }).timeout(const Duration(seconds: 100));

    if (response != null && response is int) {
      return response;
    } else {
      throw Exception('Invalid response format');
    }
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack trace: $stack');
    return 0;
  }
}

Future<int> fetchNo(String userEmail) async {
  final client = OdooClient(DATABASE_URL);
  await client.authenticate(
      DATABASE_NAME, DATABASE_ACCESS_LOGIN, DATABASE_ACCESS_PASSWORD);

  try {
    var response = await client.callKw({
      'model': 'patient.image',
      'method': 'search_count',
      'args': [
        [
          ['user_email', '=', userEmail],
          [
            'result_predicted',
            'not in',
            [
              'CPA',
              'TB',
            ],
          ],
        ],
      ],
      'kwargs': {}
    }).timeout(const Duration(seconds: 100));

    if (response != null && response is int) {
      return response;
    } else {
      throw Exception('Invalid response format');
    }
  } catch (e, stack) {
    print('Exception: $e');
    print('Stack trace: $stack');
    return 0;
  }
}
