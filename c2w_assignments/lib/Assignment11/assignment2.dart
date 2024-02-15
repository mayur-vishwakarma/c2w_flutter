import 'package:flutter/material.dart';

class Assignment11AppBar2 extends StatelessWidget {
  const Assignment11AppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber,
        title: const Center(child: Text("AppBar")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded)),
        ],
      ),
    );
  }
}
