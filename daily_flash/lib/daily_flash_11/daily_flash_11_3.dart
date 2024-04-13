import 'package:flutter/material.dart';

class DailyFlash113 extends StatefulWidget {
  const DailyFlash113({super.key});

  @override
  State<DailyFlash113> createState() => _DailyFlash113State();
}

class _DailyFlash113State extends State<DailyFlash113> {
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.amber,
                hintText: "Enter Your Name",
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
