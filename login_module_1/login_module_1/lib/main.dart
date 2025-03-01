import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_module_1/firebase_options.dart';
import 'package:login_module_1/view/splash_screen.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
