import 'package:flutter/material.dart';

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
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    width: width*0.1,
                    height: height*0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFFDF5ED),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
