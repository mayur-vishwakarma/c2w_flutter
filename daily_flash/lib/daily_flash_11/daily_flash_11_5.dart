import 'package:flutter/material.dart';

class DailyFlash115 extends StatefulWidget {
  const DailyFlash115({super.key});

  @override
  State<DailyFlash115> createState() => _DailyFlash115State();
}

class _DailyFlash115State extends State<DailyFlash115> {
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
              maxLines: 3,
              decoration: InputDecoration(
                label: const Text(
                  "Enter Your Name",
                ),
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
