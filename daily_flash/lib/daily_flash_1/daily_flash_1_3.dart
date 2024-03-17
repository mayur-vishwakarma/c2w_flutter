import 'package:flutter/material.dart';

class DailyFlash13 extends StatelessWidget {
  const DailyFlash13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: const Text("Title"),
        centerTitle: true,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
    );
  }
}
