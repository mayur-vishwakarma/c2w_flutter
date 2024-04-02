import 'package:flutter/material.dart';

class DailyFlash71 extends StatelessWidget {
  const DailyFlash71({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.orange,
            ),
            Container(
              height: 70,
              width: 80,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
