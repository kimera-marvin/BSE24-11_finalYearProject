// ignore_for_file: file_names
// // ignore_for_file: file_names, must_be_immutable, prefer_const_constructors, sort_child_properties_last, library_private_types_in_public_api, use_build_context_synchronously

// import 'dart:io';
// import 'dart:typed_data';

// import 'package:final_app/ui/articles.dart';
// import 'package:final_app/ui/hPage.dart';
// import 'package:final_app/ui/history.dart';
// import 'package:final_app/ui/profile.dart';
// import 'package:final_app/ui/questions.dart';
// import 'package:final_app/ui/upload.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:image_picker/image_picker.dart';

// class BaseScreen extends StatefulWidget {
//   // final PageController pageController;
//   // final Function(int) onTap;
//   // final Function() showMenu;
//   // final Function(BuildContext) showImagePickerOption;

//   const BaseScreen({
//     Key? key,
//     // required this.pageController,
//     // required this.onTap,
//     // required this.showMenu,
//     // required this.showImagePickerOption,
//   }) : super(key: key);

//   @override
//   _BaseScreenState createState() => _BaseScreenState();
// }

// class _BaseScreenState extends State<BaseScreen> {
//   Uint8List? _image;
//   File? selectedIMage;
//   late PageController pageController = PageController();
//   int pageIndex = 0;
//   bool showOptions = false;

//     onPageChanged(int pageIndex) {
//     setState(() {
//       this.pageIndex = pageIndex;
//     });
//   }

//   onTap(int pageIndex) {
//     if (pageIndex == 4) {
//       // Show the menu instead of changing the page
//       _showMenu();
//     } else {
//       pageController.jumpToPage(pageIndex);
//     }
//   }

//     void _showMenu() {
//     final RenderBox overlay =
//         Overlay.of(context).context.findRenderObject() as RenderBox;
//     final RenderBox itemBox = context.findRenderObject() as RenderBox;
//     final Offset itemPosition =
//         itemBox.localToGlobal(Offset.zero, ancestor: overlay);
//     final double iconWidth = itemBox.size.width;
//     final double iconHeight = itemBox.size.height;
//     const double menuHeight = 80.0;
//     const double menuWidth = 100.0;

//     // Coordinates for the positioning of the pop-up menu
//     final RelativeRect position = RelativeRect.fromRect(
//       Rect.fromPoints(
//         itemPosition.translate(iconHeight, menuWidth * 2 + iconWidth),
//         itemPosition.translate(
//             menuWidth / 2 - iconWidth / 2, iconHeight / 2 + menuHeight),
//       ),
//       Offset.zero & overlay.size,
//     );

//     showMenu(
//       context: context,
//       position: position,
//       items: [
//         PopupMenuItem(
//           child: Text(
//             "Learn more",
//             style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               decoration: TextDecoration.underline,
//             ),
//           ),
//         ),
//         PopupMenuItem(
//           child: TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Articles(),
//                 ),
//               ).then((_) => Navigator.pop(context));
//             },
//             child: Text(
//               "Articles",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//         PopupMenuItem(
//           child: TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => Questions(),
//                 ),
//               ).then((_) => Navigator.pop(context));
//             },
//             child: Text(
//               "FAQs",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         children: const <Widget>[
//           HPage(),
//           Profile(),
//           History(),
//         ],
//         controller: pageController,
//         onPageChanged: onPageChanged,
//         physics: const NeverScrollableScrollPhysics(),
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         color: Colors.blue,
//         buttonBackgroundColor: Colors.blue,
//         height: 65,
//         animationCurve: Curves.easeInOut,
//         animationDuration: const Duration(milliseconds: 400),
//         items: <Widget>[
//           const Icon(Icons.home_outlined),
//           const Icon(Icons.person_outlined),
//           GestureDetector(
//             onTap: () {
//               showImagePickerOption(context);
//             },
//             child: Container(
//               width: 70,
//               height: 70,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.red,
//               ),
//               padding: const EdgeInsets.all(8),
//               child: const Column(
//                 children: [
//                   Icon(
//                     Icons.camera_alt,
//                     color: Colors.white,
//                     size: 35,
//                   ),
//                   Text(
//                     'Scan',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Icon(Icons.alarm),
//           const Icon(Icons.menu),
//         ],
//       ),
//     );
//   }

//    void showImagePickerOption(BuildContext context) {
//     showModalBottomSheet(
//       backgroundColor: Colors.blue[100],
//       context: context,
//       builder: (builder) {
//         return Padding(
//           padding: EdgeInsets.all(18.0),
//           child: SizedBox(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height / 4.5,
//             child: Row(
//               children: [
//                 Expanded(
//                   child: InkWell(
//                     onTap: () {
//                       _pickImageFromGallery();
//                     },
//                     child: SizedBox(
//                       child: Column(
//                         children: const [
//                           Icon(
//                             Icons.image,
//                             size: 70,
//                           ),
//                           Text("Photo"),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: InkWell(
//                     onTap: () {
//                       _pickImageFromCamera();
//                     },
//                     child: SizedBox(
//                       child: Column(
//                         children: const [
//                           Icon(
//                             Icons.camera_alt,
//                             size: 70,
//                           ),
//                           Text("Camera"),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // Photo
//   Future _pickImageFromGallery() async {
//     final returnImage =
//         await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (returnImage == null) return;
//     setState(() {
//       selectedIMage = File(returnImage.path);
//       _image = File(returnImage.path).readAsBytesSync();
//     });
//     Navigator.of(context).pop();
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Upload(image: _image),
//       ),
//     );
//   }

//   // Camera
//   Future _pickImageFromCamera() async {
//     final returnImage =
//         await ImagePicker().pickImage(source: ImageSource.camera);
//     if (returnImage == null) return;
//     setState(() {
//       selectedIMage = File(returnImage.path);
//       _image = File(returnImage.path).readAsBytesSync();
//     });
//     Navigator.of(context).pop();
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Upload(image: _image),
//       ),
//     );
//   }
// }
