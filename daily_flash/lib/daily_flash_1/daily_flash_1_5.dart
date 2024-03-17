import 'package:flutter/material.dart';

class DailyFlash15 extends StatelessWidget {
  const DailyFlash15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: 20, color: Colors.red, offset: Offset(10, 10))
              ],
              color: Colors.blue,
              border: Border.all(color: Colors.orange, width: 5)),
        ),
      ),
    );
  }
}
