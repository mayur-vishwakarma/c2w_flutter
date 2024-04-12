import 'package:flutter/material.dart';

class DailyFlash101 extends StatefulWidget {
  const DailyFlash101({super.key});

  @override
  State<DailyFlash101> createState() => _DailyFlash101State();
}

class _DailyFlash101State extends State<DailyFlash101> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red, Colors.blue],
                ),
              ),
            ),
          )),
    );
  }
}
