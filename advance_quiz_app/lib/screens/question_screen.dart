import 'package:advance_quiz_app/models/question_model.dart';
import 'package:advance_quiz_app/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  int selectedIndex = -1;
  List questionlist = [
    QuestionModel(
      question:
          "If David’s age is 27 years old in 2011. What was his age in 2003?",
      options: ["19 years", "37 years", "20 years", "17 years"],
      correctAnswerIndex: 0,
      exp:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
    ),
    QuestionModel(
      question:
          "If David’s age is 27 years old in 2011. What was his age in 2003?",
      options: ["19 years", "37 years", "20 years", "17 years"],
      correctAnswerIndex: 0,
      exp:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
    ),
    QuestionModel(
      question:
          "If David’s age is 27 years old in 2011. What was his age in 2003?",
      options: ["19 years", "37 years", "20 years", "17 years"],
      correctAnswerIndex: 0,
      exp:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
    ),
    QuestionModel(
      question:
          "If David’s age is 27 years old in 2011. What was his age in 2003?",
      options: ["19 years", "37 years", "20 years", "17 years"],
      correctAnswerIndex: 0,
      exp:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
    ),
    QuestionModel(
      question:
          "If David’s age is 27 years old in 2011. What was his age in 2003?",
      options: ["19 years", "37 years", "20 years", "17 years"],
      correctAnswerIndex: 0,
      exp:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing",
    ),
  ];

  Color tileColor(int tappedindex) {
    if (selectedIndex != -1) {
      if (tappedindex == questionlist[currentIndex].correctAnswerIndex) {
        return const Color.fromRGBO(26, 181, 134, 1);
      } else if (selectedIndex == tappedindex) {
        return const Color.fromRGBO(255, 0, 0, 1);
      } else {
        return const Color.fromRGBO(248, 145, 87, 1);
      }
    }
    return const Color.fromRGBO(248, 145, 87, 1);
  }

  Widget trailingIcon(int tappedIndex) {
    if (selectedIndex != -1) {
      if (tappedIndex == questionlist[currentIndex].correctAnswerIndex) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: const Icon(
            Icons.check,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        );
      } else if (selectedIndex == tappedIndex) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: const Icon(
            Icons.cancel_outlined,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        );
      } else {
        return Container(
          margin: const EdgeInsets.all(10),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        );
      }
    }
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Icon(
        Icons.arrow_forward_ios,
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(26, 181, 134, 1),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(200)),
          onPressed: () {
            if (selectedIndex != -1) {
              if (currentIndex < questionlist.length - 1) {
                setState(() {
                  currentIndex++;
                  selectedIndex = -1;
                });
              }
              if (currentIndex == questionlist.length - 1) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (ctx) {
                      return const ResultScreen();
                    },
                  ),
                );
              }
            }
          },
          label: currentIndex == questionlist.length - 1
              ? Text(
                  "FINISH",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                )
              : Row(
                  children: [
                    Text(
                      "NEXT",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_circle_right,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    )
                  ],
                )),
      backgroundColor: const Color.fromRGBO(250, 245, 241, 1),
      body: Padding(
        padding: const EdgeInsets.all(29),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Math Quiz",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              barRadius: const Radius.circular(10),
              lineHeight: 5,
              percent: (currentIndex + 1) / questionlist.length,
              progressColor: const Color.fromRGBO(42, 135, 63, 1),
              backgroundColor: const Color.fromRGBO(245, 216, 186, 1),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "${currentIndex + 1}",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Text(
                  "/${questionlist.length}",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              questionlist[currentIndex].question,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: questionlist[currentIndex].options.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (selectedIndex == -1) {
                        setState(() {
                          selectedIndex = index;
                        });
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: ListTile(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        contentPadding: const EdgeInsets.all(8),
                        tileColor: tileColor(index),
                        title: Text(
                          "   ${questionlist[currentIndex].options[index]}",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        trailing: trailingIcon(index),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.left,
                "Explanantion",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color.fromRGBO(131, 76, 52, 1),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                questionlist[currentIndex].exp,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(131, 76, 52, 0.8),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
