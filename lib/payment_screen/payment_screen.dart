import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_food_delivery_app/signup_screen/singup_screen.dart';

import '../profile_screens/update_profile_screen.dart';

class PaymentScreen extends StatefulWidget {
  static const String id = "PaymentScreen";

  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                        Navigator.pushNamed(context, SignUpScreen.id);
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
                    "Payment Method",
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

                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 330,
                    height: 73,
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        elevation: 10,
                        shadowColor: const Color(0xFFFDF5ED),
                        child: Image.asset(
                          "assets/images/paypalLogo.png",
                          fit: BoxFit.contain,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 330,
                      height: 73,
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        elevation: 10,
                        shadowColor: const Color(0xFFFDF5ED),
                        child: Center(
                          child: SizedBox(
                            width: 110,
                            child: Image.asset(
                              "assets/images/Visa_Card_Logo.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 330,
                    height: 73,
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: Center(
                        child: SizedBox(
                          width: 120,
                          child: Image.asset(
                            "assets/images/Payoneer_Logo.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 130),
                    width: 157, // Set the desired width
                    height: 57, // Set the desired height
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, UpdateProfileImageScreen.id);
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
