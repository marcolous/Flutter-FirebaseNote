import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_google_button.dart';
import 'package:firebase_note/customs/custom_or_with.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/custom_text_field.dart';
import 'package:firebase_note/customs/password_text_field.dart';
import 'package:firebase_note/screens/login_screen/forgot_password_widget.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ListView(
            children: [
              const CustomBackButton(),
              const Gap(28),
              Text(
                'Hello! Register to get started',
                style: Style.style30(context),
              ),
              const Gap(32),
              const CustomTextField(hintText: 'Username'),
              const Gap(12),
              const CustomTextField(hintText: 'Email'),
              const Gap(12),
              const PasswordTextField(hintText: 'Password'),
              const Gap(12),
              const PasswordTextField(hintText: 'Confirm password'),
              const Gap(12),
              const ForgotPasswordWidget(),
              const Gap(30),
              CustomButton(
                title: 'Register',
                onPressed: () {},
              ),
              const Gap(35),
              const CustomOrWith(title: 'Or Register with'),
              const Gap(22),
              const CustomGoogleButton(),
              CustomRow(
                title: 'Already have an account? ',
                subTitle: 'Login Now',
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
