import 'package:adv_todo_app_with_java_backend/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) {
              return const AdvLoginPage();
            },
          ),
        );
      },
    );
    super.initState();
  }

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
