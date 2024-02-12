import 'package:flutter/material.dart';

class Storywidget extends StatelessWidget {
  const Storywidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(70),
        ),
        border: Border.all(width: 3, color: Colors.red.shade600),
      ),
    );
  }
}
