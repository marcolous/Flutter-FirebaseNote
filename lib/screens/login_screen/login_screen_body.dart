// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_google_button.dart';
import 'package:firebase_note/customs/custom_or_with.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/email_text_field.dart';
import 'package:firebase_note/customs/password_text_field.dart';
import 'package:firebase_note/screens/login_screen/forgot_password_widget.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/show_snack_bar.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const CustomBackButton(),
              const Gap(28),
              Text(
                'Welcome back! Glad to see you, Again!',
                style: Style.style30(context),
              ),
              const Gap(32),
              EmailTextField(hintText: 'Enter your email', controller: _email),
              const Gap(15),
              PasswordTextField(
                  hintText: 'Enter your Password', controller: _passWord),
              const Gap(15),
              const ForgotPasswordWidget(),
              const Gap(30),
              CustomButton(
                title: 'Login',
                onPressed: () => _login(),
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
      ),
    );
  }

  void _login() async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text,
          password: _passWord.text,
        );
        Navigator.of(context).pushNamed(Routes.kHomeScreen);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'invalid-email') {
          ShowSnackBar.show(context, 'No user found for that email.');
        } else if (e.code == 'invalid-credential') {
          ShowSnackBar.show(context, 'Wrong password provided for that user.');
        }
      }
    }
  }
}
