import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_google_button.dart';
import 'package:firebase_note/customs/custom_or_with.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/custom_text_field.dart';
import 'package:firebase_note/customs/password_text_field.dart';
import 'package:firebase_note/screens/login_screen/forgot_password_widget.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({
    super.key,
  });

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _passWord = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _passWord.dispose();
    super.dispose();
  }

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
            CustomTextField(hintText: 'Enter your email', controller: _email),
            const Gap(15),
            PasswordTextField(
                hintText: 'Enter your Password', controller: _passWord),
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
                title: 'Don\'t have an account? ',
                subTitle: 'Register Now',
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(Routes.kRegisterScreen);
                })
          ],
        ),
      ),
    );
  }
}
