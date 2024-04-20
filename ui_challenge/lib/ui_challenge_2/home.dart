import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ui_challenge/ui_challenge_2/detailscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  Widget indicators(int index) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex == index
            ? const Color.fromRGBO(62, 102, 24, 1)
            : const Color.fromRGBO(197, 214, 181, 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 170,
                child: Column(
                  children: [
                    SizedBox(
                      height: 81,
                      child: Stack(
                        children: [
                          Positioned(
                            width: 200,
                            left: 135,
                            top: -120,
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(174, 189, 159, 1),
                                    width: 2),
                              ),
                            ),
                          ),
                          Positioned(
                            width: 134,
                            left: 270,
                            top: -75,
                            child: Container(
                              height: 134,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(174, 189, 159, 1),
                                    width: 2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "Find your\n favorite plants",
                            style: GoogleFonts.poppins(
                                fontSize: 24,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 16.1,
                                      color: Color.fromRGBO(0, 0, 0, 0.15))
                                ],
                              ),
                              child: Image.asset(
                                "asset/image/12.png",
                                height: 10,
                                color: const Color.fromRGBO(62, 102, 24, 1),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, pageViewIndex) {
                  return Container(
                    margin: const EdgeInsets.all(1),
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(204, 231, 185, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "30% OFF",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "02-23 April",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          "asset/image/6.png",
                          height: 108,
                          width: 120,
                        )
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  initialPage: 0,
                  height: 140,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: indicators(index),
                  );
                }),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Indoor",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) {
                                      return const DetailScreen();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                height: 188,
                                width: 141,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.06),
                                      blurRadius: 7,
                                      offset: Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("asset/image/7.png"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      width: double.infinity,
                                      child: Text(
                                        "Snake Plants",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹350",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              color: const Color.fromRGBO(
                                                  62, 102, 24, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 26,
                                            width: 26,
                                            decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    237, 238, 235, 1),
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                              "asset/image/12.png",
                                              height: 10,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Divider(
                        endIndent: 20,
                      ),
                      Text(
                        "Outdoor",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const DetailScreen();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                height: 188,
                                width: 141,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.06),
                                      blurRadius: 7,
                                      offset: Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Image.asset("asset/image/7.png"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      width: double.infinity,
                                      child: Text(
                                        "Snake Plants",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.dmSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Text(
                                            "₹350",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              color: const Color.fromRGBO(
                                                  62, 102, 24, 1),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 26,
                                            width: 26,
                                            decoration: const BoxDecoration(
                                                color: Color.fromRGBO(
                                                    237, 238, 235, 1),
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                              "asset/image/12.png",
                                              height: 10,
                                              color: const Color.fromRGBO(
                                                  0, 0, 0, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
