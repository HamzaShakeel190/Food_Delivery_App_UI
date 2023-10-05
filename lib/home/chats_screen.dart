import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/chat_provider.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  // Define lists of images and texts
  final List<String> profileImages = [
    "assets/images/PhotoProfile1.png",
    "assets/images/PhotoProfile2.png",
    "assets/images/PhotoProfile3.png",
  ];

  final List<String> names = ["Anamwp", "John Doe", "Jane Smith"];
  final List<String> messages = [
    "Your Order Just Arrived",
    "Hello, how are you?",
    "Meeting at 2 PM"
  ];

  @override
  Widget build(BuildContext context) {
    // Obtain the ChatProvider from the nearest ancestor in the widget tree
    final chatProvider = Provider.of<ChatProvider>(context);
    final chatMessages = chatProvider.chatMessages;

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
            height: height * 0.7,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () {
                              Navigator.pop(context);
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
                                Icons.arrow_back,
                                color: Color(0xFFDA6317),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Chat",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 31,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Hero(
                        tag: "fromChats",
                        child: Container(
                          key: Key(index.toString()), // Add a unique key for each container
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 5,
                                spreadRadius: 0.05,
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                profileImages[index], // Use the image from the list
                                width: 50,
                              ),
                            ),
                            title: Text(names[index]), // Use the name from the list
                            subtitle: Text(messages[index]), // Use the message from the list
                            splashColor: const Color(0xE5D77B42),
                            trailing: const Text(
                              "20.00",
                              style: TextStyle(color: Color(0xffa2a2a2)),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



