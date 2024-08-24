import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final bool obsecureText;
  final Icon icon;
  final TextEditingController controller;
  const InputField({
    required this.hintText,
    required this.obsecureText,
    required this.icon,
    required this.controller,
    super.key
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: widget.icon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          hintText: widget.hintText,
        ),
        obscureText: widget.obsecureText,
      ),
    );
  }
}