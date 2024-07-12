import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/screens/home_screen/home_screen.dart';
import 'package:firebase_note/screens/login_screen/login_screen.dart';
import 'package:firebase_note/screens/register_screen/register_screen.dart';
import 'package:firebase_note/screens/welcome_screen/welcome_screen.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const FirebaseNote());
}

class FirebaseNote extends StatelessWidget {
  const FirebaseNote({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null
          ? const WelcomeScreen()
          : const HomeScreen(),
      routes: {
        Routes.kWelcomeScreen: (context) => const WelcomeScreen(),
        Routes.kLoginScreen: (context) => const LoginScreen(),
        Routes.kRegisterScreen: (context) => const RegisterScreen(),
        Routes.kHomeScreen: (context) => const HomeScreen(),
      },
    );
  }
}
