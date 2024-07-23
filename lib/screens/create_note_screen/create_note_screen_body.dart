import 'package:firebase_note/customs/custom_button.dart';
import 'package:firebase_note/screens/create_note_screen/create_note_screen_app_bar.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateNoteScreenBody extends StatelessWidget {
  CreateNoteScreenBody({super.key});
  final TextEditingController title = TextEditingController();
  final TextEditingController desc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                const CreateNoteScreenAppBar(),
                const Gap(30),
                NoteTextField(
                  hintText: 'Title',
                  controller: title,
                  hintStyle: Style.style48(context),
                ),
                NoteTextField(
                  hintText: 'Type something...',
                  controller: desc,
                  hintStyle: Style.style23(context),
                ),
              ],
            ),
            const Expanded(child: Gap(1)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                title: 'Save',
                onPressed: () {},
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}

class NoteTextField extends StatelessWidget {
  const NoteTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.hintStyle,
  });

  final String hintText;
  final TextEditingController controller;
  final TextStyle hintStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required field';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      style: hintStyle.copyWith(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        // contentPadding: const EdgeInsets.all(24),
      ),
    );
  }

  OutlineInputBorder errBorderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2,
      ),
    );
  }
}
