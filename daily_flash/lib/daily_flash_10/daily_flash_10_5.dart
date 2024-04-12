import 'package:flutter/material.dart';

class DailyFlash105 extends StatefulWidget {
  const DailyFlash105({super.key});

  @override
  State<DailyFlash105> createState() => _DailyFlash105State();
}

class _DailyFlash105State extends State<DailyFlash105> {
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
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.blue, Colors.purple, Colors.green],
                ),
                boxShadow: [
                  BoxShadow(color: Colors.red, offset: Offset(10, 10))
                ]),
          ),
        ),
      ),
    );
  }
}
