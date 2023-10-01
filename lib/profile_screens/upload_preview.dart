import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../location/location_screen.dart';

class UploadedImagePreview extends StatelessWidget {
  static const String id = "UploadedImagePreview";

  final XFile? imageFile;

  const UploadedImagePreview({Key? key, required this.imageFile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: SingleChildScrollView(
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
                          Icons.arrow_back,
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
                    ),
                  ),
                ),

                // Display the selected image
                Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                        child: imageFile != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.file(
                                  File(imageFile!.path),
                                  width: 240,
                                  height: 240,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Container(
                                width: 240,
                                height: 240,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 5,
                                        spreadRadius: 0.1,
                                      ),
                                    ]),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.account_circle,
                                      size: 120,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Your Avatar",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 52, 60, 0),
                        child: Container(
                          margin: const EdgeInsets.all(3),
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.white38, // Set the background color here
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close_rounded,
                              size: 20,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Next Button
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    width: 157, // Set the desired width
                    height: 57, // Set the desired height
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LocationScreen.id);
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
      ),
    );
  }
}
