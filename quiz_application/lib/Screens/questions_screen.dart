import 'package:flutter/material.dart';

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answer;
  const SingleQuestionModel({required this.question, required this.options,required this.answer});
}
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}



class _QuestionsScreenState extends State<QuestionsScreen> {
  final List _questions = [
    const SingleQuestionModel(
      question: "What is Flutter?",
      options: [
        "Flutter is an open-source UI toolkit",
        "Flutter is an open-source backend development framework",
        "Flutter is an open-source programming language for cross-platform applications",
        "Flutters is a DBMS toolkit"
      ],
      answer: 0
    ),
    const SingleQuestionModel(
      question:
          "Who developed the Flutter Framework and continues to maintain it today?",
      options: ["Facebook", "Microsoft", "Google", "Oracle"],
      answer: 2
    ),
    const SingleQuestionModel(
      question:
          "Which programming language is used to build Flutter applications?",
      options: ["Go", "Kotlin", "Java", "Dart"],
      answer: 3
    ),
    const SingleQuestionModel(
      question: "How many types of widgets are there in Flutter?",
      options: ["4", "2", "6", "8+"],
      answer: 1
    ),
    const SingleQuestionModel(
      question:
          "What are some key advantages of Flutter over alternate frameworks?",
      options: [
        "All Options",
        "Rapid cross-platform application development and debugging tools",
        "Future-proofed technologies and UI resources",
        "Strong supporting tools for application development and launch"
      ],
      answer: 0
    )
  ];

  bool isQuestionScreen = true;
  int count = 0;
  int selectAnswer = -1;
  int correctAnswerCount = 0;

  Color? checkAnswer(int buttonIndex) {
    if (selectAnswer != -1) {
      if (buttonIndex == _questions[count].answer) {
        return Colors.green;
      } else if (selectAnswer == buttonIndex) {
        return Colors.red;
      } else {
        return Colors.purple.shade900;
      }
    } else {
      return Colors.purple.shade900;
    }
  }

  void validateCurrentPage() {
    if (selectAnswer == -1) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Center(
          child: Text(
            "Please Select Answer...",
            style: TextStyle(color: Colors.purple.shade50),
          ),
        ),
        backgroundColor: Colors.purple.shade900,
      ));
      return;
    }
    if (selectAnswer == _questions[count].answer) {
      correctAnswerCount++;
    }

    if (selectAnswer != -1) {
      if (count == _questions.length - 1) {
        setState(() {
          isQuestionScreen = false;
        });
        return;
      }
      selectAnswer = -1;
      setState(() {
        count++;
      });
    }
  }

  Scaffold questionsScreenSc() {
    if (isQuestionScreen == true) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple.shade100,
          onPressed: () {
            validateCurrentPage();
            // setState(
            //   () {
            //     if (count >= _questions.length - 1) {
            //       //isQuestionScreen = false;
            //       //correctAnswerCount = 0;
            //       selectAnswer = -1;
            //       count = 0;
            //     } else {
            //       if (selectAnswer != -1) {
            //         selectAnswer = -1;
            //         count++;
            //       }
            //     }
            //   },
            // );
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
                    "Q.  ${_questions[count].question}",
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * .75,
                      45,
                    ),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * .75, 100),
                    padding: const EdgeInsets.all(20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: checkAnswer(0)),
                child: Text(
                  "A. ${_questions[count].options[0]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple.shade50),
                ),
                onPressed: () {
                  if (selectAnswer == -1) {
                    setState(() {
                      selectAnswer = 0;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * .75,
                      45,
                    ),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * .75, 100),
                    padding: const EdgeInsets.all(20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: checkAnswer(1)),
                child: Text(
                  "B. ${_questions[count].options[1]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple.shade50),
                ),
                onPressed: () {
                  if (selectAnswer == -1) {
                    setState(() {
                      selectAnswer = 1;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * .75,
                      45,
                    ),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * .75, 100),
                    padding: const EdgeInsets.all(20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: checkAnswer(2)),
                child: Text(
                  "C. ${_questions[count].options[2]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple.shade50),
                ),
                onPressed: () {
                  if (selectAnswer == -1) {
                    setState(() {
                      selectAnswer = 2;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * .75,
                      45,
                    ),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * .75, 100),
                    padding: const EdgeInsets.all(20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: checkAnswer(3)),
                child: Text(
                  "D. ${_questions[count].options[3]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple.shade50),
                ),
                onPressed: () {
                  if (selectAnswer == -1) {
                    setState(() {
                      selectAnswer = 3;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                  height: 300,
                  child: Image.network(
                      "data:image/jpeg;base64,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")),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Congratulations...",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple.shade900),
              ),
              const SizedBox(height: 15),
              Text(
                "You Have Completed Quiz...",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple.shade900),
              ),
              const SizedBox(height: 15),
              Text(
                "Your Score - $correctAnswerCount/${_questions.length}",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Colors.purple.shade900),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width * .75,
                      45,
                    ),
                    maximumSize:
                        Size(MediaQuery.of(context).size.width * .75, 100),
                    padding: const EdgeInsets.all(20),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: Colors.purple.shade900),
                child: Text(
                  "Reset Quiz",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.purple.shade50),
                ),
                onPressed: () {
                  count = 0;
                  selectAnswer = -1;
                  correctAnswerCount = 0;
                  setState(() {
                    isQuestionScreen = true;
                  });
                },
              ),
            ],
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
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return questionsScreenSc();
  }
}
