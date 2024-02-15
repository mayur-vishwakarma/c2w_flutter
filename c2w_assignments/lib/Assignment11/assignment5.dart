import 'package:flutter/material.dart';

class Assignment11AppBar5 extends StatelessWidget {
  const Assignment11AppBar5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assests/images/1.jpg", fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assests/images/1.jpg", fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assests/images/1.jpg", fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
