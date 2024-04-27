// import 'package:expense_manager/screens/login_screen.dart';
// import 'package:expense_manager/screens/category_screen.dart';
// import 'package:expense_manager/screens/graph_screen.dart';

import 'package:expense_manager/screens/trash_screen.dart';
// import 'package:expense_manager/screens/main_home_page.dart';
// import 'package:expense_manager/screens/registration_screen.dart';
import 'package:flutter/material.dart';
// import 'package:expense_manager/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrashScreen(),
    );
  }
}
