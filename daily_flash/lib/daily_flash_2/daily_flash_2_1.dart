import 'package:flutter/material.dart';

class DailyFlash21 extends StatelessWidget {
  const DailyFlash21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              border: Border.all(color: Colors.red, width: 5)),
          child: const Center(child: Text("Mayur")),
        ),
      ),
    );
  }
}
