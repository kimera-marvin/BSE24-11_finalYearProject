// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, use_build_context_synchronously, sort_child_properties_last

import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:final_app/ui/upload.dart';
import 'package:final_app/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
      color: Colors.blue,
      buttonBackgroundColor: Colors.blue,
      height: 65,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 400),
      onTap: (index) {
        if (index == 2) {
          showImagePickerOption(context);
        } else {
          onTap(index);
        }
      },
      index: currentIndex,
      items: <Widget>[
        const Icon(Icons.home_outlined),
        const Icon(Icons.person_outlined),
        GestureDetector(
          onTap: () {
            showImagePickerOption(context);
          },
          child: Container(
            width: 70, // Adjust the width of the container
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red, // Set the color of the circle here
            ),
            padding: const EdgeInsets.all(8), // Adjust the padding as needed
            child: const Column(
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
        const Icon(Icons.alarm),
        const Icon(Icons.menu),
      ],
    );
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.blue[100],
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          _pickImageFromGallery(context);
                        },
                        child: const SizedBox(
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
                          _pickImageFromCamera(context);
                        },
                        child: const SizedBox(
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
                const SizedBox(height: 15),
                const Text(
                  "Upload Chest X-Ray",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future _pickImageFromGallery(BuildContext context) async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    final _image = File(returnImage.path).readAsBytesSync();
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenWithNavigationBar(
          child: Upload(
            image: _image,
            username: username, // Pass username if available
            email: email,
          ),
          currentIndex: 2,
          username: username, // Pass username if available
          email: email, // Pass email if available
        ),
      ),
    );
  }

  Future _pickImageFromCamera(BuildContext context) async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    final _image = File(returnImage.path).readAsBytesSync();
    Navigator.of(context).pop();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenWithNavigationBar(
          child: Upload(
            image: _image,
            username: username, // Pass username if available
            email: email,
          ),
          currentIndex: 2,
          username: username, // Pass username if available
          email: email, // Pass email if available
        ),
      ),
    );
  }
}
