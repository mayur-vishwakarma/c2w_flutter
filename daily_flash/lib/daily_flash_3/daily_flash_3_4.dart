import 'package:flutter/material.dart';

class DailyFlash34 extends StatelessWidget {
  const DailyFlash34({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(color: Colors.blue, boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.red,
                spreadRadius: 1,
                offset: Offset(0, -20))
          ]),
          child: const Text("Mayur"),
        ),
      ),
    );
  }
}
