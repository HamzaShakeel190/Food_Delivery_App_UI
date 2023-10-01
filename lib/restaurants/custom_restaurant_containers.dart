import 'package:flutter/material.dart';

class CustomRestaurantDisplayContainer extends StatelessWidget {
  final String imgAddress;
  final String txt;
  final int time;

  const CustomRestaurantDisplayContainer({
    Key? key,
    required this.imgAddress,
    required this.txt,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 150,
      height: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 0.05,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(imgAddress),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                txt,
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
              ),
            ),
            Text(
              "$time Mins",
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xFFA0A0A0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
