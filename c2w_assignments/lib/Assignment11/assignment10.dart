import 'package:flutter/material.dart';

class Assignment11AppBar10 extends StatelessWidget {
  const Assignment11AppBar10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            color: Colors.blue,
          ),
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
