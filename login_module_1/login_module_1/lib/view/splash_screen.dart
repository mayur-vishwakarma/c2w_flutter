import 'package:flutter/material.dart';
import 'package:login_module_1/controller/session_data.dart';
import 'package:login_module_1/view/login_screen.dart';
import 'package:login_module_1/view/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void navigate(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 4),
      () async {
        await SessionData.getSessionData();
        bool islogin = SessionData.isLogin ?? false;
        final nextPage = islogin ? const MainScreen() : const LoginPage();
        if (context.mounted) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => nextPage),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/login.jpg",
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
