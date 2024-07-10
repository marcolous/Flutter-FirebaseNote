import 'package:firebase_note/screens/welcome_screen/welcome_bg_image.dart';
import 'package:firebase_note/screens/welcome_screen/welcome_screen_buttons.dart';
import 'package:flutter/material.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        WelcomeBGImage(),
        WelocmeScreenButtons(),
      ],
    );
  }
}



