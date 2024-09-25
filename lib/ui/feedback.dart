import 'package:flutter/material.dart';

class FD extends StatefulWidget {
  final String username;
  final String email;
  final int currentIndex;
  final String phone;

  const FD({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State<FD> createState() => _FeedbackState();
}

class _FeedbackState extends State<FD> {
  late String username;
  late String email;
  late String phone;

  @override
  void initState() {
    super.initState();
    username = widget.username;
    email = widget.email;
    phone = widget.phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.brown,
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
                          "Feedback",
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
            ],
          ),
        ),
      ),
    );
  }
}
