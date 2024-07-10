import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color(0xff1E232C),
          overlayColor: const Color(0xff1E232C),
          elevation: 0,
        ),
        child: Text(
          title,
          style: Style.style15(context),
        ),
      ),
    );
  }
}
