import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int count = 0;

  void updateCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Assignment 4"),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "You have tapped button many times...",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateCount,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}