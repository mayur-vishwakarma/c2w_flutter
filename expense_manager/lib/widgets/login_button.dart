import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.buttonName,
    required this.onpress,
  });

  final String buttonName;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(14, 161, 125, 1),
      ),
      child: TextButton(
        onPressed: () {
          onpress();
        },
        child: Text(
          " Sign up",
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
    );
  }
}
