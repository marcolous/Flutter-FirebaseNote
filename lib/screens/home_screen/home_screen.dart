// ignore_for_file: use_build_context_synchronously

import 'package:firebase_note/screens/home_screen/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey[200],
        child: Icon(
          Icons.add,
          size: 32,
          color: Colors.grey[900],
        ),
      ),
      body: const HomeScreenBody(),
    );
  }
}
