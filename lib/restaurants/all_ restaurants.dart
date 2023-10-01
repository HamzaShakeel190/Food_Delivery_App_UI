import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../restaurants/custom_restaurant_containers.dart';

class AllRestaurantsScreen extends StatefulWidget {
  static const String id = "AllRestaurantsScreen";

  const AllRestaurantsScreen({super.key});

  @override
  State<AllRestaurantsScreen> createState() => _AllRestaurantsScreenState();
}

class _AllRestaurantsScreenState extends State<AllRestaurantsScreen> {
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
          SingleChildScrollView(
            child: SafeArea(
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

                    // Container Headings
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20,),
                        child: Text(
                          "Nearest Restaurant",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Row(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRestaurantDisplayContainer(
                                imgAddress: "assets/images/Restaurant_GoodFood_Image.png",
                                txt: "Good Food",
                                time: 12,
                              ),
                              CustomRestaurantDisplayContainer(
                                imgAddress:
                                "assets/images/Restaurant_SmartResto_Image.png",
                                txt: "Smart Resto",
                                time: 8,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRestaurantDisplayContainer(
                                imgAddress: "assets/images/Restaurant_CookNature_Image.png",
                                txt: "Cook Nature",
                                time: 12,
                              ),
                              CustomRestaurantDisplayContainer(
                                imgAddress:
                                "assets/images/Restaurant_MasterChef_Image.png",
                                txt: "Master Chef",
                                time: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
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
