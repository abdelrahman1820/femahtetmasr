import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.onChanged,
    required this.controller,
  });
  final String label, hint;
  final IconData icon;
  final Function(String) onChanged;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
            color: Color(0xff00343D),
            fontSize: 14,
            fontWeight: FontWeight.w500),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Icon(
            icon,
            color: const Color(0xffB7864B),
          ),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffAAAAAA)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffAAAAAA)),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
