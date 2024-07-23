// ignore_for_file: use_build_context_synchronously

import 'package:firebase_note/screens/home_screen/home_screen_body.dart';
import 'package:firebase_note/screens/home_screen/home_screen_floating_action_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: HomeScreenFloatingActionButton(),
      body: HomeScreenBody(),
    );
  }
}
