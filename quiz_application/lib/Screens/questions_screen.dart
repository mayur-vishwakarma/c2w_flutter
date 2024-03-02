import 'package:flutter/material.dart';

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answer;
  const SingleQuestionModel(
      {required this.question, required this.options, required this.answer});
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
        answer: 0),
    const SingleQuestionModel(
        question:
            "Who developed the Flutter Framework and continues to maintain it today?",
        options: ["Facebook", "Microsoft", "Google", "Oracle"],
        answer: 2),
    const SingleQuestionModel(
        question:
            "Which programming language is used to build Flutter applications?",
        options: ["Go", "Kotlin", "Java", "Dart"],
        answer: 3),
    const SingleQuestionModel(
        question: "How many types of widgets are there in Flutter?",
        options: ["4", "2", "6", "8+"],
        answer: 1),
    const SingleQuestionModel(
        question:
            "What are some key advantages of Flutter over alternate frameworks?",
        options: [
          "All Options",
          "Rapid cross-platform application development and debugging tools",
          "Future-proofed technologies and UI resources",
          "Strong supporting tools for application development and launch"
        ],
        answer: 0)
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple.shade900,width: 2,style: BorderStyle.solid),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                height: 300,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStiPdOjBnrcRowgbrq6mgN5W1dfXdaraLteg&usqp=CAU"),
              ),
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
