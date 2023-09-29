import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarHome extends StatefulWidget {
  static const String id = "NavigationBarHome";

  const NavigationBarHome({super.key});

  @override
  State<NavigationBarHome> createState() => _NavigationBarHomeState();
}

class _NavigationBarHomeState extends State<NavigationBarHome> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/SplashScreen.png",
            fit: BoxFit.fill,
            width: width,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Find Your\nFavorite Food",
                          style: TextStyle(
                            // backgroundColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 31,
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 0.5,
                                blurStyle: BlurStyle.normal,
                                spreadRadius: 0.05,
                              )
                            ]
                          ),
                          child: const Icon(
                            Icons.notifications_none_rounded,
                            color: Color(0xFF38D683),
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width*0.73,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFEF6ED),
                              borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "What do you want to order?",
                                hintStyle: TextStyle(
                                  color: Color(0xFFF0BB97),
                                  fontSize: 12,
                                ),
                                prefixIcon: Icon(CupertinoIcons.search, color: Color(0xFFDA6317), size: 24,),
                                border: InputBorder.none,
                              ),

                            ),
                          ),
                        ),
                        Container(
                          width: 47,
                          height: 47,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFEF6ED),
                              borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset("assets/icons/settings.png"),
                        ),
                      ],
                    ),
                  ),




                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
