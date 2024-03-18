import 'package:flutter/material.dart';

class DailyFlash35 extends StatelessWidget {
  const DailyFlash35({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(150)),
                    color: Colors.blue),
              )),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(150)),
                    color: Colors.red),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
