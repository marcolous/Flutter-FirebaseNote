import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_default_button.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class CreateNoteScreenAppBar extends StatelessWidget {
  const CreateNoteScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomBackButton(),
          Text(
            'Untitled',
            style: Style.style43(context),
            textAlign: TextAlign.right,
          ),
          CustomDefaultButton(
            iconData: Icons.edit,
            onPressed: () {
              
            },
          ),
        ],
      ),
    );
  }
}
