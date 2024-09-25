// ignore_for_file: avoid_print, deprecated_member_use, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profile extends StatefulWidget {
  final String username;
  final String email;
  final String phone;
  final String region;
  final String district;
  final String village;

  const Profile({
    Key? key,
    required this.username,
    required this.email,
    required this.phone,
    required this.region,
    required this.district,
    required this.village,
  }) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isToggled = false;
  late String username;
  late String email;
  late String phone;
  bool isEditingUsername = false;
  bool isEditingPhone = false;
  bool isEditingRegion = false;
  bool isEditingDistrict = false;
  bool isEditingVillage = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController regionController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController villageController = TextEditingController();
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
    usernameController.text = username;
    phoneController.text = phone;
    regionController.text = region;
    districtController.text = district;
    villageController.text = village;
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();
      setState(() {
        username = userDoc['username'];
        phone = userDoc['phone']; // Fetch the phone number
        region = userDoc['region'];
        district = userDoc['district'];
        village = userDoc['village'];
        usernameController.text = username;
        phoneController.text = phone; // Set the phone number to the controller
        regionController.text = region;
        districtController.text = district;
        villageController.text = village;
      });
    }
  }

  Future<void> updateUserProfile() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .update({
          'username': usernameController.text,
          'phone': phoneController.text, // Update phone number in Firestore
          'region': regionController.text,
          'district': districtController.text,
          'village': villageController.text,
        });

        setState(() {
          username = usernameController.text;
          phone = phoneController.text;
          region = regionController.text;
          district = districtController.text;
          village = villageController.text;
          isEditingUsername = false;
          isEditingPhone = false;
          isEditingRegion = false;
          isEditingDistrict = false;
          isEditingVillage = false;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Profile updated successfully!')),
        );
      } catch (e) {
        print('Failed to update profile: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update profile: $e')),
        );
      }
    }
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
                          "Profile",
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
              Container(
                decoration: const BoxDecoration(
                  // color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.zero,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // user details
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.blue, width: 1),
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
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          if (isEditingUsername)
                                            Expanded(
                                              child: TextField(
                                                controller: usernameController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Username',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            )
                                          else
                                            Expanded(
                                              child: Text(
                                                "User Name: $username",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                            ),
                                          // const SizedBox(width: 5),
                                          IconButton(
                                            icon: const Icon(Icons.create,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                isEditingUsername = true;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          if (isEditingPhone)
                                            Expanded(
                                              child: TextField(
                                                controller: phoneController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Phone Number',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            )
                                          else
                                            Expanded(
                                              child: Text(
                                                "Phone Number: $phone",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                            ),
                                          IconButton(
                                            icon: const Icon(Icons.create,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                isEditingPhone = true;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Email: $email",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.brown,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          if (isEditingRegion)
                                            Expanded(
                                              child: TextField(
                                                controller: regionController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Region',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            )
                                          else
                                            Expanded(
                                              child: Text(
                                                "Region: $region",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                            ),
                                          IconButton(
                                            icon: const Icon(Icons.create,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                isEditingRegion = true;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          if (isEditingDistrict)
                                            Expanded(
                                              child: TextField(
                                                controller: districtController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'District',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            )
                                          else
                                            Expanded(
                                              child: Text(
                                                "District: $district",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                            ),
                                          IconButton(
                                            icon: const Icon(Icons.create,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                isEditingDistrict = true;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        children: [
                                          if (isEditingVillage)
                                            Expanded(
                                              child: TextField(
                                                controller: villageController,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Village',
                                                  border: OutlineInputBorder(),
                                                ),
                                              ),
                                            )
                                          else
                                            Expanded(
                                              child: Text(
                                                "Village: $village",
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                            ),
                                          IconButton(
                                            icon: const Icon(Icons.create,
                                                color: Colors.black),
                                            onPressed: () {
                                              setState(() {
                                                isEditingVillage = true;
                                              });
                                            },
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

                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                          // border: Border.all(color: Colors.blue, width: 1),
                          // color: Colors.lightBlueAccent,
                        ),
                        child: TextButton(
                          onPressed: updateUserProfile,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 90.0),
                            child: Text(
                              "Save Changes",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              // const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
