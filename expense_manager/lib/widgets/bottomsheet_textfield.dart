import 'package:flutter/material.dart';

class BottomSheetTextField extends StatelessWidget {
  const BottomSheetTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.validator,
  });
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color.fromRGBO(191, 189, 189, 1),
            ),
          ),
        ),
      ),
    );
  }
}
