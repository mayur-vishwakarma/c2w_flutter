import 'package:flutter/material.dart';

class Assignment11AppBar4 extends StatelessWidget {
  const Assignment11AppBar4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 360,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.blue,
              height: 200,
              width: 360,
            ),
          ],
        ),
      ),
    );
  }
}
