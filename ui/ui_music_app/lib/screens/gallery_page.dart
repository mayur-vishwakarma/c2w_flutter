import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_music_app/models/slider_model.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int currentIndex = 0;
  List<SliderModel> sliderlist = [
    SliderModel(imgPath: "assets/image/2.jpg"),
    SliderModel(imgPath: "assets/image/2.jpg"),
    SliderModel(imgPath: "assets/image/2.jpg"),
  ];

  Widget indicators(int index) {
    if (currentIndex == index) {
      return Container(
        height: 8,
        width: 21,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromRGBO(255, 61, 0, 1)),
      );
    } else {
      return Container(
        height: 8,
        width: 8,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(197, 214, 181, 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: sliderlist.length,
              itemBuilder: (context, index, pageviewIndex) {
                return SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        sliderlist[index].imgPath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Positioned(
                        top: 180,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Color.fromRGBO(19, 19, 19, 1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 170,
                        child: Column(
                          children: [
                            Text(
                              "A.L.O.N.E",
                              style: GoogleFonts.inter(
                                fontSize: 34,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 35,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(19),
                                color: const Color.fromRGBO(255, 46, 0, 1),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "Subscribe",
                                    style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            19, 19, 19, 1)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                  initialPage: 0,
                  height: 280,
                  scrollPhysics: const BouncingScrollPhysics(),
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  aspectRatio: 2,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  clipBehavior: Clip.antiAlias),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: indicators(index),
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
