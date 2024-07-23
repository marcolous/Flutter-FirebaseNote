import 'package:firebase_note/customs/custom_back_button.dart';
import 'package:firebase_note/customs/custom_default_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateNoteScreenAppBar extends StatelessWidget {
  const CreateNoteScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomBackButton(),
          const Spacer(),
          CustomDefaultButton(
            iconData: Icons.edit,
            onPressed: () {},
          ),
          const Gap(10),
          CustomDefaultButton(
            iconData: Icons.save_rounded,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
