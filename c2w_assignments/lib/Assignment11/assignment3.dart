import 'package:flutter/material.dart';

class Assignment11AppBar3 extends StatelessWidget {
  const Assignment11AppBar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.amber,
        title: const Center(child: Text("Hello Core2Web")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded)),
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 360,
        ),
      ),
    );
  }
}
