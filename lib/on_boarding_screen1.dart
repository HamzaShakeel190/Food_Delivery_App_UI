import 'package:flutter/material.dart';

import 'on_boarding_screen2.dart';

class OnBoardingScreen1 extends StatelessWidget {
  static const String id = "onBoardingScreen1";

  const OnBoardingScreen1({super.key});

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
                "assets/images/OnBoardingScreen1.png",
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
                    "Find your Comfort \nFood here",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Here You Can find a chef or dish for every\ntaste and color. Enjoy!",
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
                          Navigator.pushNamed(context, OnBoardingScreen2.id);
                        },
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
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
