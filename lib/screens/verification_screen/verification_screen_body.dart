// ignore_for_file: use_build_context_synchronously
import 'package:firebase_note/screens/verification_screen/verification_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_row.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/show_snack_bar.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:gap/gap.dart';

class VerificationScreenBody extends StatefulWidget {
  const VerificationScreenBody({super.key});

  @override
  State<VerificationScreenBody> createState() => _VerificationScreenBodyState();
}

class _VerificationScreenBodyState extends State<VerificationScreenBody> {
  bool isLoading = false;
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
              'Verification',
              style: Style.style30(context),
            ),
            const Gap(20),
            Text(
              'Check the verification link we just sent on your email address.',
              style: Style.style16(context),
            ),
            const Gap(35),
            VerificationButton(
              isLoading: isLoading,
              onPressed: () {
                _sendVerificationEmail();
              },
            ),
            CustomRow(
              title: 'Didn\'t received code? ',
              subTitle: 'Resend',
              onTap: () {
                _sendVerificationEmail();
              },
            )
          ],
        ),
      ),
    );
  }

  void _sendVerificationEmail() {
    try {
      FirebaseAuth.instance.currentUser!.sendEmailVerification();
      ShowSnackBar.show(context, 'Verification link has been sent');
      if (!mounted) return;
      setState(() {
        isLoading = true;
      });
      _checkEmailVerified();
    } catch (e) {
      ShowSnackBar.show(context, e.toString());
    }
  }

  void _checkEmailVerified() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await user.reload();
        user = FirebaseAuth.instance.currentUser;
      }
      if (user!.emailVerified) {
        if (!mounted) return;
        setState(() {
          isLoading = false;
        });
        Navigator.pushNamed(context,Routes.kHomeScreen);
      } else {
        await Future.delayed(const Duration(seconds: 3));
        _checkEmailVerified();
      }
    } catch (e) {
      ShowSnackBar.show(context, 'Error checking email verification: $e');
    }
  }
}
