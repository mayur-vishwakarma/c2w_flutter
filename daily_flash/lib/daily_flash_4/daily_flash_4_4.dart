import 'package:flutter/material.dart';

class DailyFlash44 extends StatefulWidget {
  const DailyFlash44({super.key});

  @override
  State<DailyFlash44> createState() => _DailyFlash44State();
}

class _DailyFlash44State extends State<DailyFlash44> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: MouseRegion(
      onHover: (event) => setState(() {
        setState(() {
          isHovering = true;
        });
      }),
      child: FloatingActionButton(
        onPressed: () {},
        //  hoverColor: isHovering ? Colors.orange : Colors.blue,
        backgroundColor: isHovering ? Colors.orange : Colors.blue,
      ),
    ));
  }
}
