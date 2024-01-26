import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Assignment 2"),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red[500],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[900],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow[800],
            ),
          ],
        ),
      ),
    );
  }
}