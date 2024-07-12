import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_google_button.dart';
import 'package:firebase_note/customs/custom_or_with.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/custom_text_field.dart';
import 'package:firebase_note/customs/password_text_field.dart';
import 'package:firebase_note/screens/login_screen/forgot_password_widget.dart';
import 'package:firebase_note/screens/register_screen/register_screen.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: ListView(
          children: [
            const CustomBackButton(),
            const Gap(28),
            Text(
              'Welcome back! Glad to see you, Again!',
              style: Style.style30(context),
            ),
            const Gap(32),
            const CustomTextField(hintText: 'Enter your email'),
            const Gap(15),
            const PasswordTextField(hintText: 'Enter your Password'),
            const Gap(15),
            const ForgotPasswordWidget(),
            const Gap(30),
            CustomButton(
              title: 'Login',
              onPressed: () {},
            ),
            const Gap(35),
            const CustomOrWith(title: 'Or Login with'),
            const Gap(22),
            const CustomGoogleButton(),
            CustomRow(
              title: 'Don’t have an account? ',
              subTitle: 'Register Now',
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
