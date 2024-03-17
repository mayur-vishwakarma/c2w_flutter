import 'package:flutter/material.dart';

class DailyFlash12 extends StatelessWidget {
  const DailyFlash12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        leading: const Icon(Icons.home),
        actions: const [
          Icon(Icons.home_filled),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.list_alt_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.logout_outlined),
          SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
