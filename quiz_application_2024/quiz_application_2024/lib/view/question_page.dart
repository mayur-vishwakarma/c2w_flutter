import 'package:flutter/material.dart';
import 'package:quiz_application_2024/model/question_model.dart';
import 'package:quiz_application_2024/view/result_page.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<QuestionModel> questions = [
    QuestionModel(
        "What is Dart primarily used for?",
        [
          "Web development",
          "Mobile development using Flutter",
          "Game development",
          "Desktop applications"
        ],
        1),
    QuestionModel(
        "What type of language is Dart classified as?",
        [
          "Statically typed",
          "Dynamically typed",
          "Both statically and dynamically typed",
          "Scripting"
        ],
        0),
    QuestionModel("What is the correct way to declare a constant in Dart?",
        ["var", "const", "let", "final"], 1),
    QuestionModel(
        "How do you define a list of integers in Dart?",
        [
          "List<int> numbers = [1, 2, 3];",
          "int[] numbers = [1, 2, 3];",
          "var numbers = [1, 2, 3];",
          "List numbers = [1, 2, 3];"
        ],
        0),
    QuestionModel("Which company developed Dart?",
        ["Google", "Microsoft", "Facebook", "Apple"], 0)
  ];
  int currentQuestionIndex = 0;
  int selectAnswer = -1;
  int score = 0;

  void validatePage() {
    if (selectAnswer == -1) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Center(
            child: Text(
              "Please select Answer...",
              style: TextStyle(fontSize: 18, color: Colors.yellow),
            ),
          ),
        ),
      );
    }
    if (selectAnswer == questions[currentQuestionIndex].answerIndex) {
      score++;
    }
    if (currentQuestionIndex < questions.length - 1 && selectAnswer != -1) {
      ScaffoldMessenger.of(context).clearSnackBars();

      currentQuestionIndex++;
      selectAnswer = -1;
    } else if (currentQuestionIndex == questions.length - 1) {
      ScaffoldMessenger.of(context).clearSnackBars();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return ResultPage(
              score: score,
            );
          },
        ),
      );
    }
    setState(() {});
  }

  Color buttonColor(int pressedbutton) {
    if (selectAnswer != -1) {
      if (pressedbutton == questions[currentQuestionIndex].answerIndex) {
        return Colors.green;
      } else if (selectAnswer == pressedbutton) {
        return Colors.red;
      } else {
        return Colors.purple.shade400;
      }
    }
    return Colors.purple.shade400;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quiz App",
          style: TextStyle(
              color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                "Question : ${currentQuestionIndex + 1}/${questions.length}",
                style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  questions[currentQuestionIndex].questionText,
                  style: const TextStyle(
                      color: Colors.purple,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: questions[currentQuestionIndex].options.length,
                  itemBuilder: (context, index1) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 25),
                      decoration: BoxDecoration(
                          color: buttonColor(index1),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (selectAnswer == -1) {
                              selectAnswer = index1;
                            }
                          });
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          questions[currentQuestionIndex].options[index1],
                          style: TextStyle(
                              color: Colors.purple.shade100, fontSize: 20),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        onPressed: () {
          validatePage();
        },
        backgroundColor: Colors.purple,
        child: currentQuestionIndex != questions.length - 1
            ? const Icon(Icons.forward_sharp, size: 30, color: Colors.amber)
            : const Text(
                "End",
                style: TextStyle(color: Colors.amber, fontSize: 16),
              ),
      ),
    );
  }
}
