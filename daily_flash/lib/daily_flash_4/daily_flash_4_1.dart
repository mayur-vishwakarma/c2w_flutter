import 'package:flutter/material.dart';

class DailyFlash41 extends StatelessWidget {
  const DailyFlash41({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(200, 200)),
              maximumSize: MaterialStatePropertyAll(Size(200, 200)),
              shadowColor: MaterialStatePropertyAll(Colors.red),
              elevation: MaterialStatePropertyAll(10),
              shape: MaterialStatePropertyAll(CircleBorder(eccentricity: 1))),
          child: const Center(child: Text("Click me")),
        ),
      ),
    );
  }
}
