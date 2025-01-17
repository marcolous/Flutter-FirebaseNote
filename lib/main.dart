import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_note/cubits/auth_cubit/auth_cubit.dart';
import 'package:firebase_note/screens/create_note_screen/create_note_screen.dart';
import 'package:firebase_note/screens/home_screen/home_screen.dart';
import 'package:firebase_note/screens/login_screen/login_screen.dart';
import 'package:firebase_note/screens/register_screen/register_screen.dart';
import 'package:firebase_note/screens/reset_password/reset_password.dart';
import 'package:firebase_note/screens/settings_screen/settings_screen.dart';
import 'package:firebase_note/screens/verification_screen/verification_screen.dart';
import 'package:firebase_note/screens/welcome_screen/welcome_screen.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: FirebaseAuth.instance.currentUser == null
            ? const WelcomeScreen()
            : const HomeScreen(),
        routes: {
          Routes.kWelcomeScreen: (context) => const WelcomeScreen(),
          Routes.kLoginScreen: (context) => const LoginScreen(),
          Routes.kRegisterScreen: (context) => const RegisterScreen(),
          Routes.kHomeScreen: (context) => const HomeScreen(),
          Routes.kVerificationScreen: (context) => const VerificationScreen(),
          Routes.kResetPasswordScreen: (context) => const ResetPassword(),
          Routes.kSettingsScreen: (context) => const SettingsScreen(),
          Routes.kCreateNoteScreen: (context) => const CreateNoteScreen(),
        },
      ),
    );
  }
}
