// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_google_button.dart';
import 'package:firebase_note/customs/custom_or_with.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/email_text_field.dart';
import 'package:firebase_note/customs/password_text_field.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/show_snack_bar.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({
    super.key,
  });

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _passWord = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _userName.dispose();
    _email.dispose();
    _passWord.dispose();
    _confirmPass.dispose();
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
                'Hello! Register to get started',
                style: Style.style30(context),
              ),
              const Gap(32),
              EmailTextField(hintText: 'Username', controller: _userName),
              const Gap(12),
              EmailTextField(hintText: 'Email', controller: _email),
              const Gap(12),
              PasswordTextField(hintText: 'Password', controller: _passWord),
              const Gap(12),
              PasswordTextField(
                  hintText: 'Confirm password', controller: _confirmPass),
              const Gap(30),
              CustomButton(
                title: 'Register',
                onPressed: () => _register(),
              ),
              const Gap(35),
              const CustomOrWith(title: 'Or Register with'),
              const Gap(22),
              const CustomGoogleButton(),
              CustomRow(
                  title: 'Already have an account? ',
                  subTitle: 'Login Now',
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(Routes.kLoginScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }

  void _register() async {
    if (_passWord.text != _confirmPass.text) {
      ShowSnackBar.show(context, 'Password doesn\'t match');
      return;
    }
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text,
          password: _passWord.text,
        );
        Navigator.of(context).pushNamed(Routes.kVerificationScreen);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ShowSnackBar.show(context, 'The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          ShowSnackBar.show(
              context, 'The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
