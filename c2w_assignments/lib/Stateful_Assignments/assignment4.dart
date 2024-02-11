import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  int boxColorIndex1 = 0;
  int boxColorIndex2 = 0;

  List<Color> boxColor1 = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.orange
  ];

  void updatecolor1() {
    if (boxColorIndex1 <= boxColor1.length) {
      setState(() {
        boxColorIndex1 = (boxColorIndex1 + 1) % 4;
      });
    } else {
      boxColorIndex1 = 0;
    }
  }

  void updatecolor2() {
    if (boxColorIndex2 <= boxColor1.length) {
      setState(() {
        boxColorIndex2 = (boxColorIndex2 + 1) % 4;
      });
    } else {
      boxColorIndex2 = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Stateful - Assignment 4"),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: boxColor1[boxColorIndex1],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: updatecolor1,
                    child: const Text("Button 1"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: boxColor1[boxColorIndex2],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: updatecolor2,
                    child: const Text("Button 2"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
