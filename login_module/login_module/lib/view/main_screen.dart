import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Main Screen",
          style: GoogleFonts.quicksand(
              fontSize: 20, backgroundColor: Colors.blue, color: Colors.white),
        ),
      ),
    );
  }
}
