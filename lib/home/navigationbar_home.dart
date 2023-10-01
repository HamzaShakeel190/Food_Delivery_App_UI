import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../restaurants/view_more_screen.dart';

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
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 20),
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
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.notifications_none_rounded,
                            color: Color(0xFF38D683),
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.73,
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
                                prefixIcon: Icon(
                                  CupertinoIcons.search,
                                  color: Color(0xFFDA6317),
                                  size: 24,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 47,
                          height: 47,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEF6ED),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Image(
                            image: AssetImage("assets/images/settings.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: width,
                    height: height * 0.19,
                    decoration: BoxDecoration(
                      color: const Color(0xFF38D683),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/iceCream.png",
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              "assets/images/iceCreamBackground.png",
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: 150,
                              // right: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20, bottom: 10),
                                    child: Text(
                                      softWrap: true,
                                      "Special Deal For\nOctober",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      animationDuration:
                                      const Duration(milliseconds: 200),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: const Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          color: Color(0xFF38D683),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                  // Container Headings
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearest Restaurant",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFFF843F),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomRestaurantDisplayContainer(
                            imgAddress: "assets/images/Resturant_Vegas_Image.png",
                            txt: "Vegan Resto",
                            time: 12,
                        ),
                        CustomRestaurantDisplayContainer(
                          imgAddress:
                              "assets/images/Restaurant_Healthy_Image.png",
                          txt: "Healthy Food",
                          time: 8,
                        ),
                      ],
                    ),
                  ),

                  // Container Headings
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Menu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFFFF843F),
                        ),
                      ),
                    ],
                  ),

                  // Container(
                  //   width: width * 0.425,
                  //   height: height * 0.235,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(22),
                  //       boxShadow: const [
                  //         BoxShadow(
                  //           color: Colors.black54,
                  //           spreadRadius: 0.1,
                  //           blurRadius: 5,
                  //         )
                  //       ]),
                  //   child: Padding(
                  //     padding:
                  //         const EdgeInsets.only(left: 10, right: 10, top: 20),
                  //     child: Column(
                  //       children: [
                  //         Image.asset(
                  //             "assets/images/Resturant_Vegas_Image.png"),
                  //         const Padding(
                  //           padding: EdgeInsets.symmetric(vertical: 10),
                  //           child: Text(
                  //             "Vegan Resto",
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.w900, fontSize: 19),
                  //           ),
                  //         ),
                  //         const Text(
                  //           "12 Mins",
                  //           style: TextStyle(
                  //             fontSize: 10,
                  //             color: Color(0xFFA0A0A0),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget customContainers(width, height,
  //     {required String imgAddress, required String txt, required int time}) {
  //   return Container(
  //     width: 147,
  //     height: 170,
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(22),
  //       boxShadow: const [
  //         BoxShadow(
  //           color: Colors.black12,
  //           spreadRadius: 0.05,
  //           blurRadius: 5,
  //         ),
  //       ],
  //     ),
  //     child: Padding(
  //       padding:
  //           const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
  //       child: Column(
  //         children: [
  //           Image.asset(imgAddress),
  //           Spacer(),
  //           Padding(
  //             padding: const EdgeInsets.symmetric(vertical: 5),
  //             child: Text(
  //               txt,
  //               style:
  //                   const TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
  //             ),
  //           ),
  //           Text(
  //             "$time Mins",
  //             style: const TextStyle(
  //               fontSize: 10,
  //               color: Color(0xFFA0A0A0),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
