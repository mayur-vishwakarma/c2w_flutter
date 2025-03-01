import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  const InputTextField(
      {super.key,
      required this.controller,
      required this.themeColor,
      required this.prefixIcon,
      required this.label,
      required this.validate,
      this.isobsure,
      this.obsureText});
  final TextEditingController controller;
  final Color themeColor;
  final IconData prefixIcon;
  final String label;
  final String? Function(String?) validate;
  final bool? isobsure;
  final String? obsureText;
  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validate,
      controller: widget.controller,
      cursorColor: widget.themeColor,
      decoration: InputDecoration(
        label: Text(
          widget.label,
          style: TextStyle(fontSize: 20, color: widget.themeColor),
        ),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: widget.themeColor,
        ),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.themeColor, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.themeColor, width: 3),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
