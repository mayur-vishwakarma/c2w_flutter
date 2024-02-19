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
        bottom: const PreferredSize(
          preferredSize: Size(50, 50),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Appbar Bottom",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(11),
            bottomRight: Radius.circular(11),
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
