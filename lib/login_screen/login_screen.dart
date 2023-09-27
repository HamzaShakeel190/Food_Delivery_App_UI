import 'package:flutter/material.dart';

import '../signup_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "LoginScreen";

  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = true; // Moved it here to preserve state
  void togglePasswordView() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(
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
        backgroundColor: Colors.white,
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
                      "Login To Your Account",
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
                        bottom: 15,
                        top: 40
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
                      bottom: 12,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      shadowColor: const Color(0xFFFDF5ED),
                      child: TextField(
                        obscureText: showPassword,
                        autocorrect: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Password",
                          hintStyle: const TextStyle(
                              // color: Color(0xfff4f4f4),
                              ),
                          suffixIcon: IconButton(
                            onPressed: togglePasswordView,
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide.none, // Remove the default border
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Or Continue With",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(152, 57),
                          elevation: 0.7,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        icon: const Icon(
                          Icons.facebook_rounded,
                          color: Color(0xff3c5a9a),
                          size: 25,
                        ),
                        label: const Text(
                          "Facebook",
                          style: TextStyle(
                            color: Color(0xff3c5a9a),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(152, 57),
                          elevation: 0.7,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        icon: Image.asset(
                          "assets/images/google_G_icon.png",
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        label: const Text(
                          "Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                        color: Color(0xff34d381),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 57,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 57,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Text(
                            "Signup",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
