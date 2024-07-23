import 'package:firebase_note/utils/routes.dart';
import 'package:flutter/material.dart';

class HomeScreenFloatingActionButton extends StatelessWidget {
  const HomeScreenFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.kCreateNoteScreen);
        },
        backgroundColor: Colors.grey[200],
        child: Icon(
          Icons.add,
          size: 32,
          color: Colors.grey[900],
        ),
      ),
    );
  }
}
