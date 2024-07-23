import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class WelcomeRegisterButton extends StatelessWidget {
  const WelcomeRegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context,Routes.kRegisterScreen),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: Color(0xffE8ECF4),
              width: 2,
            ),
          ),
          backgroundColor: Colors.white,
          overlayColor: const Color(0xff1E232C),
          elevation: 0,
        ),
        child: Text(
          'Register',
          style:
              Style.style15(context).copyWith(color: const Color(0xff1E232C)),
        ),
      ),
    );
  }
}
