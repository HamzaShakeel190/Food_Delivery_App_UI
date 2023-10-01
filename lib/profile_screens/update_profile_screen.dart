import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'camera_screen.dart';
import 'upload_preview.dart'; // Make sure to import UploadedImagePreview from the correct location

class UpdateProfileImageScreen extends StatefulWidget {
  static const String id = "UpdateProfileImageScreen";

  const UpdateProfileImageScreen({super.key});

  @override
  State<UpdateProfileImageScreen> createState() =>
      _UpdateProfileImageScreenState();
}

class _UpdateProfileImageScreenState extends State<UpdateProfileImageScreen> {
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    XFile? imageFile;

    if (source == ImageSource.gallery) {
      imageFile = await _picker.pickImage(source: source);
    } else if (source == ImageSource.camera) {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        // Handle the case where no cameras are available
        return;
      }
      final camera = cameras.first;
      imageFile = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CameraPage(
            camera: camera,
            onPictureTaken: (XFile? takenPicture) {
              if (takenPicture != null) {
                Navigator.of(context).pop(takenPicture); // Return the captured picture
              }
            },
          ),
        ),
      );
    }

    if (imageFile != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => UploadedImagePreview(imageFile: imageFile),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    splashColor: const Color(0xE5D77B42),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFFDF5ED),
                      ),
                      width: 45,
                      height: 45,
                      child: const Icon(
                        CupertinoIcons.back,
                        color: Color(0xFFDA6317),
                      ),
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20, top: 0),
                child: Text(
                  "Upload Your Photo\nProfile",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20, top: 0),
                child: Text(
                  "This data will be displayed in your account \nprofile for security",
                  style: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      _pickImage(ImageSource.gallery);
                    },
                    customBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink(
                      width: width * 0.9,
                      height: height * 0.18,
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        elevation: 5,
                        shadowColor: const Color(0xFFFDF5ED),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/FromGallery.png",
                                width: 50,
                                height: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "From Gallery",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      _pickImage(ImageSource.camera);
                    },
                    customBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Ink(
                      width: width * 0.9,
                      height: height * 0.18,
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        elevation: 5,
                        shadowColor: const Color(0xFFFDF5ED),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/cameraLogo.png",
                                width: 50,
                                height: 50,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "Take Photo",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 157, // Set the desired width
                  height: 57, // Set the desired height
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const UploadedImagePreview(imageFile: null,),),);
                    },
                    style: ButtonStyle(
                      shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Adjust the radius as needed
                        ),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
