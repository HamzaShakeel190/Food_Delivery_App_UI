import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';


class UploadedImagePreview extends StatelessWidget {
  final XFile imageFile;

  UploadedImagePreview({super.key, required this.imageFile});

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

                Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,50,0,20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.file(
                            File(imageFile.path),
                            width: 240,
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    width: 157, // Set the desired width
                    height: 57, // Set the desired height
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(
                        //     context, UpdateProfileImageScreen.id);
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
