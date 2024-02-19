import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/insta.jpg",
                height: 25,
                width: 25,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: ""),
        ]);
  }
}
