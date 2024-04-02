import 'package:flutter/material.dart';

class DailyFlash73 extends StatelessWidget {
  const DailyFlash73({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.orange,
                      spreadRadius: 1,
                      offset: Offset(5, 5))
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      color: Colors.orange,
                      spreadRadius: 1,
                      offset: Offset(5, 5))
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
