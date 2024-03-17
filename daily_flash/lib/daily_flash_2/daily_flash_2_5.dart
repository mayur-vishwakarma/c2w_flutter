import 'package:flutter/material.dart';

class DailyFlash25 extends StatefulWidget {
  const DailyFlash25({super.key});

  @override
  State<DailyFlash25> createState() => _DailyFlash25State();
}

class _DailyFlash25State extends State<DailyFlash25> {
  Color boxColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            boxColor = Colors.blue;
          });
        },
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            color: boxColor,
          ),
        ),
      ),
    );
  }
}
