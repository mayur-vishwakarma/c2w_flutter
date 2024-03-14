import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodoApplication(),
    );
  }
}

class TodoApplication extends StatelessWidget {
  const TodoApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red, width: 5),
            color: const Color.fromRGBO(2, 147, 147, 1.0),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(5, 5),
                  color: Color.fromRGBO(2, 167, 177, 1),
                  blurRadius: 20),
            ],
          ),
        ),
      ),
    );
  }
}
