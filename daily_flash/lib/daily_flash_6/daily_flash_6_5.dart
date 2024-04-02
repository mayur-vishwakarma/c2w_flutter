import 'package:flutter/material.dart';

class DailyFlash65 extends StatefulWidget {
  const DailyFlash65({super.key});

  @override
  State<DailyFlash65> createState() => _DailyFlash65State();
}

class _DailyFlash65State extends State<DailyFlash65> {
  Color boxcolor1 = Colors.white;
  Color boxcolor2 = Colors.white;
  Color boxcolor3 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  boxcolor1 = Colors.red;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: boxcolor1, border: Border.all(width: 2)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  boxcolor2 = Colors.red;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: boxcolor2, border: Border.all(width: 2)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  boxcolor3 = Colors.red;
                });
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: boxcolor3, border: Border.all(width: 2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
