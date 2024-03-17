import 'package:flutter/material.dart';

class DailyFlash24 extends StatelessWidget {
  const DailyFlash24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Colors.blue,
              border: Border.all(color: Colors.red, width: 5)),
          child: const Text("Mayur"),
        ),
      ),
    );
  }
}
