import 'package:flutter/material.dart';

import 'login_screen/login_screen.dart';

class OnBoardingScreen2 extends StatelessWidget {
  static const String id = "onBoardingScreen2";

  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff53E88B),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2ecf80)),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              child: Image.asset(
                "assets/images/OnBoardingScreen2.png",
                width: width,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    "Food ninja is Where Your\nComfort Food Lives",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Enjoy a fast smooth food delivery at\nyour doorstep",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60, top: 42),
                    child: SizedBox(
                      width: 170,
                      height: 57,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
