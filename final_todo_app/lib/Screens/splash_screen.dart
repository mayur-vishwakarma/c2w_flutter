import 'dart:async';

import 'package:final_todo_app/Screens/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:final_todo_app/Screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static var prefkey = '';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  void navigate() async {
    var pref = await SharedPreferences.getInstance();
    var isEntered = pref.getString(SplashScreen.prefkey);
    Timer(
      const Duration(seconds: 3),
      () {
        if (isEntered != null) {
          if (isEntered.isNotEmpty) {
            toMainpage();
          } else {
            introPage();
          }
        } else {
          introPage();
        }
      },
    );
  }

  void introPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
      return const IntroScreen();
    }));
  }

  void toMainpage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
      return const AdvanceToDoApplication();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(120, 53, 197, 1),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Image(
            image: AssetImage('asset/images/1.png'),
          ),
        ),
      ),
    );
  }
}
