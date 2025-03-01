import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  const Customtextfield(
      {super.key,
      required this.label,
      required this.validator,
      required this.textEditingController,
      this.isobscure = false,
      this.obscuringCharacter = "*"});
  final bool isobscure;
  final String label;
  final String? Function(String?) validator;
  final TextEditingController textEditingController;
  final String obscuringCharacter;
  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  late bool _isobscure;
  @override
  void initState() {
    super.initState();
    _isobscure = widget.isobscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: widget.isobscure,
      obscuringCharacter: widget.obscuringCharacter,
      controller: widget.textEditingController,
      cursorColor: const Color.fromRGBO(128, 53, 197, 1),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isobscure = !_isobscure;
            });
          },
          icon: widget.isobscure
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off_outlined),
          color: const Color.fromRGBO(128, 53, 197, 1),
        ),
        label: Text(
          widget.label,
          style: const TextStyle(
              fontSize: 20, color: Color.fromRGBO(128, 53, 197, 1)),
        ),
        prefixIcon: const Icon(
          Icons.person,
          color: Color.fromRGBO(128, 53, 197, 1),
        ),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromRGBO(128, 53, 197, 1), width: 3),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(128, 53, 197, 1), width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(128, 53, 197, 1), width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromRGBO(128, 53, 197, 1), width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
