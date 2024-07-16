import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CustomGoogleButton extends StatelessWidget {
  const CustomGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 6,
      child: ElevatedButton(
        onPressed: () {
          signInWithGoogle();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: Color(0xffE8ECF4),
              width: 2,
            ),
          ),
          backgroundColor: Colors.white,
          overlayColor: const Color(0xff1E232C),
          elevation: 0,
        ),
        child: AppImages.googleSvg,
      ),
    );
  }

  Future signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return;
    }
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
