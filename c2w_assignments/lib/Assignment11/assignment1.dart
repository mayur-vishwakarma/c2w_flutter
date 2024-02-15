import 'package:flutter/material.dart';

class Assignment11AppBar1 extends StatelessWidget {
  const Assignment11AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber,
        title: const Text("AppBar"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded)),
        ],
      ),
    );
  }
}
