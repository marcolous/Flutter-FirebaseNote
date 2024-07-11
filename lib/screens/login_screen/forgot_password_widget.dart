import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.bottomRight,
        child:
            Text('Forgot Password?', style: Style.style14(context)),
      ),
    );
  }
}