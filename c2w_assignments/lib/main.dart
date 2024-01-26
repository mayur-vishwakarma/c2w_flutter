import 'package:flutter/material.dart';
//import 'package:c2w_assignments/Assignments/Assignment1.dart';
//import 'package:c2w_assignments/Assignments/Assignment2.dart';
//import 'package:c2w_assignments/Assignments/Assignment3.dart';
import 'package:c2w_assignments/Assignments/Assignment4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment4(),
    );
  }
}
