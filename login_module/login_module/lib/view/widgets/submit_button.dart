import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({
    super.key,
    required this.buttonColor,
    required this.buttonLabel,
    required this.labelColor,
    required this.onpress,
  });
  final Color buttonColor;
  final Color labelColor;
  final String buttonLabel;
  final void Function() onpress;

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: widget.buttonColor),
      child: TextButton(
        onPressed: widget.onpress,
        child: Text(
          widget.buttonLabel,
          style: GoogleFonts.quicksand(
              color: widget.labelColor,
              fontSize: 25,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
