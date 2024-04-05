import 'package:flutter/material.dart';

class DailyFlash91 extends StatefulWidget {
  const DailyFlash91({super.key});

  @override
  State<DailyFlash91> createState() => _DailyFlash91State();
}

class _DailyFlash91State extends State<DailyFlash91> {
  List colors = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.all(10),
                color: colors[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
