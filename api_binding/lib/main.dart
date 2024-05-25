import 'package:api_binding/controller/listprovider.dart';
import 'package:api_binding/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'screens/homepage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ListProvider();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PostScreen(),
      ),
    );
  }
}
