import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({super.key, required this.buttonLabel});

  final String buttonLabel;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width * .75,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          color: Colors.purple.shade900),
      child: TextButton(
          child: Text(
            widget.buttonLabel,
            style: TextStyle(color: Colors.purple.shade50),
          ),
          onPressed: () {}),
    );
  }
}
