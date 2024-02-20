import 'package:flutter/material.dart';

import '../lib/follow_and_unfollow/following.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const FollowingPage(),
    );
  }
}
