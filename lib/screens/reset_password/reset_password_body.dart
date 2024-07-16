// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/email_text_field.dart';
import 'package:firebase_note/utils/show_snack_bar.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key});

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final TextEditingController _email = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _email.dispose();
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
                'Forgot Password?',
                style: Style.style30(context),
              ),
              const Gap(20),
              Text(
                'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                style: Style.style16(context),
              ),
              const Gap(35),
              EmailTextField(hintText: 'Enter your email', controller: _email),
              const Gap(32),
              CustomButton(
                title: 'Reset Password',
                onPressed: () {
                  _resetPassword();
                },
              ),
              CustomRow(
                title: 'Remember Password? ',
                subTitle: 'Login',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _resetPassword() async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: _email.text.trim());
        ShowSnackBar.show(context, 'Reset Password link has been sent');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'invalid-email') {
          ShowSnackBar.show(context, 'The email address is not valid.');
        } else if (e.code == 'user-not-found') {
          ShowSnackBar.show(context, 'No user found for that email.');
        } else {
          ShowSnackBar.show(context, e.message ?? 'An unknown error occurred');
        }
      }
    }
  }
}
