import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/customs/custom_google_button.dart';
import 'package:firebase_note/customs/custom_or_with.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/customs/custom_text_field.dart';
import 'package:firebase_note/customs/password_text_field.dart';
import 'package:firebase_note/utils/routes.dart';
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
        child: ListView(
          children: [
            const CustomBackButton(),
            const Gap(28),
            Text(
              'Hello! Register to get started',
              style: Style.style30(context),
            ),
            const Gap(32),
            CustomTextField(hintText: 'Username', controller: _userName),
            const Gap(12),
            CustomTextField(hintText: 'Email', controller: _email),
            const Gap(12),
            PasswordTextField(hintText: 'Password', controller: _passWord),
            const Gap(12),
            PasswordTextField(
                hintText: 'Confirm password', controller: _confirmPass),
            const Gap(30),
            CustomButton(
              title: 'Register',
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: _email.text,
                    password: _passWord.text,
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              },
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
    );
  }
}
