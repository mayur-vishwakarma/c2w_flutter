import 'package:flutter/material.dart';

class DailyFlash102 extends StatefulWidget {
  const DailyFlash102({super.key});

  @override
  State<DailyFlash102> createState() => _DailyFlash102State();
}

class _DailyFlash102State extends State<DailyFlash102> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.red, Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
