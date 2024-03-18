import 'package:flutter/material.dart';

class DailyFlash42 extends StatelessWidget {
  const DailyFlash42({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(200, 200)),
              maximumSize: MaterialStatePropertyAll(Size(200, 200)),
              side: MaterialStatePropertyAll(
                  BorderSide(color: Colors.red, width: 3)),
              shape: MaterialStatePropertyAll(CircleBorder(eccentricity: 1))),
          child: const Center(child: Text("Click me")),
        ),
      ),
    );
  }
}
