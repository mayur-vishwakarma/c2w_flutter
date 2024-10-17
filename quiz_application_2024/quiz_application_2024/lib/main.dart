import 'package:flutter/material.dart';
import 'package:quiz_application_2024/view/question_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuestionPage(),
    );
  }
}
