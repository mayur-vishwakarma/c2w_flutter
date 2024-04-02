import 'package:flutter/material.dart';

class DailyFlash64 extends StatelessWidget {
  const DailyFlash64({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(width: 2)),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
