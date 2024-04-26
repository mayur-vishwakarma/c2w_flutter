import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerButtons extends StatefulWidget {
  const DrawerButtons({
    super.key,
    required this.buttonName,
    required this.icondata,
  });
  final String buttonName;
  final IconData icondata;

  @override
  State<DrawerButtons> createState() => _DrawerButtonsState();
}

class _DrawerButtonsState extends State<DrawerButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 50,
      width: 180,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(14, 161, 125, 0.15),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(
            left: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                widget.icondata,
                color: const Color.fromRGBO(14, 161, 125, 1),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.buttonName,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
