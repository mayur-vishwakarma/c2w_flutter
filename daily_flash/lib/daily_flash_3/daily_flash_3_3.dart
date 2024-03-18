import 'package:flutter/material.dart';

class DailyFlash33 extends StatefulWidget {
  const DailyFlash33({super.key});

  @override
  State<DailyFlash33> createState() => _DailyFlash33State();
}

class _DailyFlash33State extends State<DailyFlash33> {
  Color borderColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            borderColor = Colors.blue;
          });
        },
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration:
                BoxDecoration(border: Border.all(color: borderColor, width: 5)),
          ),
        ),
      ),
    );
  }
}
