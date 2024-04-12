import 'package:flutter/material.dart';
import 'package:ui_challenge/ui_challenge_1/coursepage.dart';
import 'package:ui_challenge/ui_challenge_1/homepage.dart';
// import 'package:ui_challenge/ui_challenge_1/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
