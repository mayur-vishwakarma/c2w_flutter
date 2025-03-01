import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome",
          style: GoogleFonts.quicksand(
              fontSize: 25,
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontStyle: FontStyle.italic),
        ),
      ),
      backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
    );
  }
}
