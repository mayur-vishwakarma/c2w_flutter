import 'package:flutter/material.dart';
import 'package:quiz_application/Widgets/buttons.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int count = 0;

  final Map<String, List<String>> _questions = {
    "What is Flutter?": [
      "Flutter is an open-source UI toolkit",
      "Flutter is an open-source backend development framework",
      "Flutter is an open-source programming language for cross-platform applications",
      "Flutters is a DBMS toolkit"
    ],
    "Who developed the Flutter Framework and continues to maintain it today?": [
      "Google",
      "Microsoft",
      "Facebook",
      "Oracle"
    ],
    "Which programming language is used to build Flutter applications?": [
      "Dart",
      "Kotlin",
      "Java",
      "Go"
    ],
    "How many types of widgets are there in Flutter?": ["2", "4", "6", "8+"],
    "What are some key advantages of Flutter over alternate frameworks?": [
      "All Options",
      "Rapid cross-platform application development and debugging tools",
      "Future-proofed technologies and UI resources",
      "Strong supporting tools for application development and launch"
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade100,
        onPressed: () {
          setState(() {
            if (count >= _questions.length - 1) {
              count = 0;
            } else {
              count++;
            }
          });
        },
        child: Icon(
          Icons.navigate_next,
          color: Colors.purple.shade800,
          size: 50,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100,
        foregroundColor: Colors.purple.shade900,
        title: const Text(
          'Quiz ',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.purple.shade50,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question : ${count + 1}/5',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple.shade900),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 120,
              width: MediaQuery.of(context).size.width * .7,
              child: Center(
                child: Text(
                  _questions.keys.toList()[count],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple.shade900),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const AnswerButton(buttonLabel: ""),
            const AnswerButton(buttonLabel: ""),
            const AnswerButton(buttonLabel: ""),
            const AnswerButton(buttonLabel: ""),
          ],
        ),
      ),
    );
  }
}
