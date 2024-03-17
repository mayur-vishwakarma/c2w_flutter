import 'package:flutter/material.dart';

class DailyFlash23 extends StatelessWidget {
  const DailyFlash23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(20)),
              color: Colors.blue,
              border: Border.all(color: Colors.red, width: 5)),
          
        ),
      ),
    );
  }
}
