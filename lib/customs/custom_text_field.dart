import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.controller});
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Style.style15Medium(context),
        filled: true,
        fillColor: const Color(0xffF7F8F9),
        focusedBorder: borderDecoration(),
        enabledBorder: borderDecoration(),
        contentPadding: const EdgeInsets.all(20),
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffE8ECF4),
        width: 2,
      ),
    );
  }
}
