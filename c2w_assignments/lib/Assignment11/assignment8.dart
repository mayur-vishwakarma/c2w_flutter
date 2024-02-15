import 'package:flutter/material.dart';

class Assignment11AppBar8 extends StatelessWidget {
  const Assignment11AppBar8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            color: Colors.blue,
          ),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
