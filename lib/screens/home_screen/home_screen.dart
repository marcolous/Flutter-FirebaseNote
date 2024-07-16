// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IconButton(
            onPressed: () async {
              GoogleSignIn googleSignIn = GoogleSignIn();
              googleSignIn.disconnect();
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.kWelcomeScreen, (route) => false);
            },
            icon: const Icon(Icons.logout_outlined)),
      ),
    );
  }
}
