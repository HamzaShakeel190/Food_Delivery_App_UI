import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {

  static const String id = "CameraPage";

  final CameraDescription camera;
  final Function(XFile) onPictureTaken; // Add the callback function

  const CameraPage({Key? key, required this.camera, required this.onPictureTaken})
      : super(key: key);

  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage> {
  late CameraController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.medium);

    // Initialize the camera controller and start the preview
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container(); // Return an empty container while the camera is initializing
    }

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFEFEFF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff53E88B),
          ),
        ),
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2ecf80)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: CameraPreview(_controller), // Display the live camera preview
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            try {
              final XFile picture = await _controller.takePicture();
              widget.onPictureTaken(picture); // Send the captured picture to the callback
              // Navigator.pop(context); // Close the camera screen
            } catch (e) {
              // Handle camera errors
              if (kDebugMode) {
                print('Error taking picture: $e');
              }
            }
          },
          child: const Icon(Icons.camera),
        ),
      ),
    );
  }
}
