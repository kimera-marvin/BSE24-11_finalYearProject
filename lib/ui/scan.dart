// // ignore_for_file: library_private_types_in_public_api, unnecessary_null_comparison, avoid_print

// import 'dart:async';
// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:gallery_saver/gallery_saver.dart';

// class Camera extends StatefulWidget {
//   const Camera({Key? key}) : super(key: key);

//   @override
//   _CameraState createState() => _CameraState();
// }

// class _CameraState extends State<Camera> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     _requestCameraPermission();
//   }

//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;
//     _controller = CameraController(
//       firstCamera,
//       ResolutionPreset.medium,
//     );

//     // Next, initialize the controller. This returns a Future
//     _initializeControllerFuture = _controller.initialize();

//     if (!mounted) {
//       return;
//     }

//     setState(() {});
//   }

//   Future<void> _requestCameraPermission() async {
//     // Request camera permission
//     final status = await Permission.camera.request();
//     if (status.isGranted) {
//       // Permission granted, initialize the camera
//       _initializeCamera();
//     } else {
//       // Permission denied, show an error message or handle it gracefully
//       print('Camera permission denied');
//     }
//   }

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_controller == null || !_controller.value.isInitialized) {
//       return Container(); // Placeholder while camera is initializing
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Camera Screen'),
//       ),
//       body: FutureBuilder<void>(
//         future: _initializeControllerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return CameraPreview(_controller);
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           try {
//             // Ensure that the camera is initialized
//             await _initializeControllerFuture;

//             // Construct the path where the image will be saved using the path_provider package
//             final Directory extDir = await getApplicationDocumentsDirectory();
//             final String dirPath = '${extDir.path}/Pictures/flutter_test';
//             await Directory(dirPath).create(recursive: true);
//             final String filePath = '$dirPath/${DateTime.now()}.png';

//             // Attempt to take a picture and log where it's been saved
//             await _controller.takePicture();

//             // Save the image to the gallery
//             GallerySaver.saveImage(filePath);

//           } catch (e) {
//             print(e); // Handle errors here
//           }
//         },
//         child: const Icon(Icons.camera),
//       ),
//     );
//   }
// }
