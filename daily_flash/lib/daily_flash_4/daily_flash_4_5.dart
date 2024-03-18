import 'package:flutter/material.dart';

class DailyFlash45 extends StatefulWidget {
  const DailyFlash45({super.key});

  @override
  State<DailyFlash45> createState() => _DailyFlash45State();
}

class _DailyFlash45State extends State<DailyFlash45> {
  Color buttonColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            buttonColor = Colors.purple;
          });
        },
        backgroundColor: buttonColor,
      ),
    );
  }
}
