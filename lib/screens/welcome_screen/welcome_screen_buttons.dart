import 'package:firebase_note/customs/app_icon.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/screens/welcome_screen/welcome_register_button.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelocmeScreenButtons extends StatelessWidget {
  const WelocmeScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = ScreenSize.width(context);
    return Positioned(
      left: 0,
      right: 0,
      top: width * 1.2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppIcon(),
            const Gap(45),
            CustomButton(
              title: 'Login',
              onPressed: () =>
                  Navigator.of(context).pushNamed(Routes.kLoginScreen),
            ),
            const Gap(15),
            const WelcomeRegisterButton()
          ],
        ),
      ),
    );
  }
}
