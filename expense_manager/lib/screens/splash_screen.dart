import 'dart:async';

import 'package:expense_manager/screens/login_screen.dart';
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
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (ctx) {
              return const LoginScreen();
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
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 144,
                width: 144,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(234, 238, 235, 1),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'asset/image/2.png',
                  height: 60,
                  width: 70,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Text(
                  "Expense Manager",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
