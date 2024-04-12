import 'package:flutter/material.dart';

class DailyFlash104 extends StatefulWidget {
  const DailyFlash104({super.key});

  @override
  State<DailyFlash104> createState() => _DailyFlash104State();
}

class _DailyFlash104State extends State<DailyFlash104> {
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
                  colors: [Colors.blue, Colors.purple, Colors.purple],
                ),
                boxShadow: const [
                  BoxShadow(color: Colors.red, offset: Offset(10, 10))
                ]),
          ),
        ),
      ),
    );
  }
}
