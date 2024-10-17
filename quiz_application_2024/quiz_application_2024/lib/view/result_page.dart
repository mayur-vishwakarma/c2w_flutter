import 'package:flutter/material.dart';
import 'package:quiz_application_2024/view/question_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "Result page",
          style: TextStyle(fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Score - ${score.toString()}",
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purple)),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const QuestionPage();
                    },
                  ),
                );
              },
              child: Text(
                "Restart Quiz",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple.shade100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
