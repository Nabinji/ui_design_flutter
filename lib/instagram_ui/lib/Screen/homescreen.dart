import 'package:flutter/material.dart';
import 'package:instagram_ui/Screen/bottomnavigation_bar.dart';

import 'post_screen.dart';
import 'story_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 243, 247),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              instagram(), storiesText(),
              // For story
              const SizedBox(
                height: 15,
              ),

              const Story(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  color: Colors.grey,
                  height: 1,
                ),
              ),
              // For post
              const Posts(),
            ],
          ),
        ),
      ),
      // For bottomNavigtion Bar
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }

  Row storiesText() {
    return const Row(
      children: [
        Text(
          "Stories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(
          Icons.play_arrow,
          size: 20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Watch all",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Row instagram() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.photo_camera_outlined,
          size: 30,
          color: Colors.black54,
        ),
        Image.asset(
          "assets/images/instagram.png",
          width: 150,
        ),
        Image.asset(
          "assets/images/send1.png",
          width: 30,
        ),
      ],
    );
  }
}
