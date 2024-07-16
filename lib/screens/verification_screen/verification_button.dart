import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
  });
  final bool isLoading;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: ElevatedButton(
        onPressed: isLoading ? () {} : onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color(0xff1E232C),
          overlayColor: const Color(0xff1E232C),
          elevation: 0,
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : Text('Verify', style: Style.style15(context)),
      ),
    );
  }
}