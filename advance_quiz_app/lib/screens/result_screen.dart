import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 245, 241, 1),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/BG.png",
                ),
                fit: BoxFit.cover)),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Quiz Result",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Math",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 166,
                    child: Container(
                      height: 315,
                      width: 334,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(246, 221, 195, 1),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          Container(
                            height: 105,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(248, 145, 87, 1),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 8,
                                    offset: Offset(0, 0),
                                    color: Color.fromRGBO(0, 0, 0, 0.1)),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Total won quiz's till now",
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "Lorem Ipsum has been the industry's standard dummy scrambled it to make a type specimen book.",
                                            style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 10,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 72,
                                    width: 72,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 2),
                                      ),
                                    ),
                                    child: CircularPercentIndicator(
                                      startAngle: 90,
                                      backgroundColor:
                                          const Color.fromRGBO(0, 0, 0, 0),
                                      progressColor: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      radius: 31,
                                      circularStrokeCap:
                                          CircularStrokeCap.square,
                                      curve: Curves.linear,
                                      lineWidth: 5,
                                      percent: 0.68,
                                      center: Container(
                                        height: 53,
                                        width: 53,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 1.5,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "68%",
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 140,
                                height: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      blurRadius: 8,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Solved\nQuestions",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              131, 76, 52, .9),
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "20",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: const Color.fromRGBO(
                                              131, 76, 52, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 140,
                                height: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(26, 181, 134, 1),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      blurRadius: 8,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        "Correct\nQuestions",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, .87),
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        "16",
                                        style: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 123,
                    child: Container(
                      height: 85,
                      width: 85,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(0, 0),
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "M",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: const Color.fromRGBO(200, 60, 0, 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 200,
            // ),
          ],
        ),
      ),
    );
  }
}
