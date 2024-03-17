import 'package:flutter/material.dart';

class DailyFlash22 extends StatelessWidget {
  const DailyFlash22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                color: Colors.blue,
                border: Border(left: BorderSide(color: Colors.red, width: 5))),
            child: const Text("Mayur")),
      ),
    );
  }
}
