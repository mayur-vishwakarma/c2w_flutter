import 'package:flutter/material.dart';

class Code1 extends StatefulWidget {
  const Code1({super.key});

  @override
  State<Code1> createState() {
    return _Code1State();
  }
}

class _Code1State extends State<Code1> {
  Color boxColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: const Text("Code1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: boxColor,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    boxColor = Colors.blue;
                  });
                },
                child: const Text("Change Color"))
          ],
        ),
      ),
    );
  }
}
