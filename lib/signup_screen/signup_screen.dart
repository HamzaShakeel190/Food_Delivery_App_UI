import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_food_delivery_app/signup_screen/signup_process_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = "SignUpScreen";

  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Image.asset("assets/images/SplashScreen.png", fit: BoxFit.fill),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset("assets/images/SplashScreenLogo.png"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 290),
                    child: Text(
                      "Sign Up For Free",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                        bottom: 5,
                        top: 40
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        // obscureText: showPassword,
                        autocorrect: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "User Name",
                          hintStyle: const TextStyle(
                            // color: Color(0xfff4f4f4),
                          ),
                          // suffixIcon: IconButton(
                          //   onPressed: togglePasswordView,
                          //   icon: Icon(
                          //     showPassword
                          //         ? Icons.visibility
                          //         : Icons.visibility_off,
                          //   ),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                        bottom: 5,
                        top: 10
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        // obscureText: showPassword,
                        autocorrect: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Email",
                          hintStyle: const TextStyle(
                            // color: Color(0xfff4f4f4),
                          ),
                          // suffixIcon: IconButton(
                          //   onPressed: togglePasswordView,
                          //   icon: Icon(
                          //     showPassword
                          //         ? Icons.visibility
                          //         : Icons.visibility_off,
                          //   ),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25,
                        right: 25,
                        bottom: 5,
                        top: 10
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        obscureText: true,
                        autocorrect: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          hintStyle: const TextStyle(
                            // color: Color(0xfff4f4f4),
                          ),
                          // suffixIcon: IconButton(
                          //   onPressed: togglePasswordView,
                          //   icon: Icon(
                          //     showPassword
                          //         ? Icons.visibility
                          //         : Icons.visibility_off,
                          //   ),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,),
                    child: Row(
                      children: [
                        MyWidget(),
                        const Text(
                          "Keep Me Signed In",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,),
                    child: Row(
                      children: [
                        MyWidget(),
                        const Text(
                          "Email Me About Special Pricing",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 175,
                    height: 57,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpProcessScreen.id);
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
                        "Create Account",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "already have an account?",
                      style: TextStyle(
                        color: Color(0xff34d381),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
      activeColor: Colors.white,
      checkColor: const Color(0xFF27CA7D),
    );
  }
}
