import 'package:flutter/material.dart';

class DailyFlash14 extends StatelessWidget {
  const DailyFlash14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.red, width: 5),
          ),
        ),
      ),
    );
  }
}
