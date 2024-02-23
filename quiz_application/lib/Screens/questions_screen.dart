import 'package:flutter/material.dart';
import 'package:quiz_application/Widgets/buttons.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade100,
        onPressed: () {
          setState(() {
            if (count >= 10) {
              count = 1;
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
        backgroundColor: Colors.purple.shade200,
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
              '$count/10',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple.shade900),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Question $count',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.purple.shade900),
            ),
            const SizedBox(
              height: 25,
            ),
            const AnswerButton(),
            const AnswerButton(),
            const AnswerButton(),
            const AnswerButton(),
          ],
        ),
      ),
    );
  }
}
