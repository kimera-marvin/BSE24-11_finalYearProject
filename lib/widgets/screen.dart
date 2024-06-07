// ignore_for_file: use_build_context_synchronously, sort_child_properties_last, no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:final_app/ui/home.dart';
import 'package:final_app/ui/upload.dart';
import 'package:final_app/widgets/baseScreen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
        username: username,
        email: email,
        onTap: (int index) {
          if (index == 4) {
            Navigator.pop(context);
          } else if (index == 2) {
            showImagePickerOption(
                context); // Ensure this method is accessible here
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
            child: Row(
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
            username: username,
            email: email,
          ),
          currentIndex: 2,
          username: username,
          email: email,
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
            username: username,
            email: email,
          ),
          currentIndex: 2,
          username: username,
          email: email,
        ),
      ),
    );
  }
}
