import 'package:flutter/material.dart';

class DailyFlash11 extends StatelessWidget {
  const DailyFlash11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        leading: const Icon(Icons.home),
        title: const Text("Title"),
        centerTitle: true,
        actions: const [Icon(Icons.logout_outlined),SizedBox(width: 5,)],
      ),
    );
  }
}
