import 'package:flutter/material.dart';

class DailyFlash103 extends StatefulWidget {
  const DailyFlash103({super.key});

  @override
  State<DailyFlash103> createState() => _DailyFlash103State();
}

class _DailyFlash103State extends State<DailyFlash103> {
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
                  colors: [
                    Colors.green,
                    Colors.green,
                    Colors.yellow,
                    Colors.yellow
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.5, 0.5, 1.0]),
            ),
          ),
        ),
      ),
    );
  }
}
