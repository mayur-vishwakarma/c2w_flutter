import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Lecture {
  final String title;
  final String subTitile;

  Lecture({required this.title, required this.subTitile});
}

class Coursepage extends StatefulWidget {
  const Coursepage({super.key});

  @override
  State<Coursepage> createState() => _CoursepageState();
}

class _CoursepageState extends State<Coursepage> {
  final List<Lecture> lecturelist = [
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
    Lecture(
      title: "Introduction",
      subTitile: 'Introduction to Dart Language...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(197, 4, 98, 1),
              Color.fromRGBO(80, 3, 112, 1)
            ],
            stops: [0.0, 0.25],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 47,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 38, right: 38),
              child: Column(
                children: [
                  Text(
                    "UX Designer from Scratch",
                    style: GoogleFonts.jost(
                      fontSize: 33,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Basic guideline & tips & tricks for how to become a UX designer easily.",
                    style: GoogleFonts.jost(
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          border: Border.all(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Color.fromRGBO(0, 82, 178, 1),
                          minRadius: 17,
                          child: Icon(
                            Icons.person_2_outlined,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Author: ",
                        style: GoogleFonts.jost(
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, .5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Jenny",
                        style: GoogleFonts.jost(
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "4.8 ",
                        style: GoogleFonts.jost(
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 146, 0, 1),
                      ),
                      Text(
                        " (20 review)",
                        style: GoogleFonts.jost(
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, .5),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: lecturelist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Container(
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                blurRadius: 40,
                                offset: Offset(0, 8),
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(230, 239, 239, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.videocam_outlined,
                                    size: 24,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lecturelist[index].title,
                                    style: GoogleFonts.jost(
                                      fontSize: 17,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    lecturelist[index].subTitile,
                                    style: GoogleFonts.jost(
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          143, 143, 143, 1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
