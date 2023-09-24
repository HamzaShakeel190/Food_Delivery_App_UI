import 'package:flutter/material.dart';
import 'package:free_food_delivery_app/signup_screen/singup_screen.dart';
import 'login_screen/login_screen.dart';
import 'on_boarding_screen1.dart';
import 'on_boarding_screen2.dart';

void main() {
  runApp(const Home());
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // Routes configuration
      routes: {
        OnBoardingScreen1.id: (context) => const OnBoardingScreen1(),
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoardingScreen2.id: (context) => const OnBoardingScreen2(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  static const String id = "splashScreen";

  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadMainScreen();
  }

  Future<void> _loadMainScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, OnBoardingScreen1.id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset("assets/images/SplashScreen.png", fit: BoxFit.fill),
            Center(
              child: Image.asset("assets/images/SplashScreenLogo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
