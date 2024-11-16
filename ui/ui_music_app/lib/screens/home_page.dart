import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset(
              "assets/image/1.png",
              width: double.infinity,
              height: 500,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color.fromRGBO(19, 19, 19, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              height: 350,
              width: 350,
              left: 40,
              top: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text(
                      "Dancing between The shadows \nOf rhythm",
                      style: GoogleFonts.inter(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 47,
                    width: 261,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 46, 0, 1),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 47,
                    width: 261,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(255, 61, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Continue with Email",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 61, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "by continuing you agree to terms \nof services and Privacy policy",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
