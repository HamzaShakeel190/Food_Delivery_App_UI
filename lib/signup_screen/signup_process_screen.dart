import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_food_delivery_app/signup_screen/signup_screen.dart';

import '../payment_screen/payment_screen.dart';

class SignUpProcessScreen extends StatefulWidget {
  static const String id = "SignUpProcessScreen";

  const SignUpProcessScreen({super.key});

  @override
  State<SignUpProcessScreen> createState() => _SignUpProcessScreenState();
}

class _SignUpProcessScreenState extends State<SignUpProcessScreen> {
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

            child: Stack(
              children: [
                Image.asset("assets/images/SplashScreen.png", fit: BoxFit.fill),

                Column(
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
                      "Fill in your bio to get \nstarted",
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
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 15),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "First Name",
                          hintStyle: const TextStyle(
                            // color: Color(0xfff4f4f4),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Last Name",
                          hintStyle: const TextStyle(
                            // color: Color(0xfff4f4f4),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mobile Number",
                          hintStyle: const TextStyle(
                            // color: Color(0xfff4f4f4),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),






                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 130, left: 30, right: 30),
                      width: width*0.5,
                      height: 57,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, PaymentScreen.id);
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
              ),]
            ),
          ),
        ),
      ),
    );
  }
}
