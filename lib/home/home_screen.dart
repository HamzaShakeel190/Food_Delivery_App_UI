import 'package:flutter/material.dart';

import 'navigationbar_home.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";

  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: const Color(0xFFE9F9F2),
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(color: Colors.green);
            } else {
              return const TextStyle(color: Colors.black);
            }
          }),
          iconTheme: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return const IconThemeData(color: Colors.green);
            } else {
              return const IconThemeData(color: Colors.black);
            }
          }),
        ),

        // useMaterial3: true,
      ),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          // backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.account_circle),
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.message),
              icon: Icon(Icons.message_outlined),
              label: 'Chat',
            ),

          ],
        ),
        body: <Widget>[
          const NavigationBarHome(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: const Text('Page 4',),
          ),
        ][currentPageIndex],
      ),
    );
  }
}
