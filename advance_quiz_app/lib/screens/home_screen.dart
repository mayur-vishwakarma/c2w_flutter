import 'package:advance_quiz_app/models/category_model.dart';
import 'package:advance_quiz_app/screens/question_screen.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categorylist = [
    CategoryModel(
      initial: "M",
      title: "Maths",
    ),
    CategoryModel(
      initial: "H",
      title: "History",
    ),
    CategoryModel(
      initial: "G",
      title: "Geography",
    ),
    CategoryModel(
      initial: "B",
      title: "Biology",
    ),
    CategoryModel(
      initial: "S",
      title: "Sports",
    ),
    CategoryModel(
      initial: "P",
      title: "Physics",
    ),
    CategoryModel(
      initial: "C",
      title: "Chemistry",
    ),
    CategoryModel(initial: "E", title: "English"),
  ];

  List initialLetterColor = const [
    Color.fromRGBO(200, 60, 0, 1),
    Color.fromRGBO(255, 157, 66, 1),
    Color.fromRGBO(3, 163, 134, 1),
    Color.fromRGBO(251, 43, 255, 1),
    Color.fromRGBO(45, 104, 255, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 245, 251, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          top: 29,
          left: 29,
          right: 29,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Mayur,",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: const Color.fromRGBO(131, 76, 52, 1)),
                    ),
                    Text(
                      "Great to see you again!",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color.fromRGBO(131, 76, 52, 1)),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 64,
                  width: 64,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(250, 188, 154, 1)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categorylist.length,
                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const QuestionScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        minVerticalPadding: 25,
                        title: Text(
                          categorylist[index].title,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: const Color.fromRGBO(131, 76, 52, 1),
                          ),
                        ),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        tileColor: const Color.fromRGBO(255, 237, 217, 1),
                        leading: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            categorylist[index].initial,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: initialLetterColor[
                                  index % initialLetterColor.length],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
