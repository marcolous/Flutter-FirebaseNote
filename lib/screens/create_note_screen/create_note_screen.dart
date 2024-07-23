import 'package:firebase_note/screens/create_note_screen/create_note_screen_body.dart';
import 'package:flutter/material.dart';

class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CreateNoteScreenBody(),
    );
  }
}