import 'package:firebase_note/customs/custom_default_button.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Notes',
          style: Style.style43(context),
        ),
        const Spacer(),
        CustomDefaultButton(
          iconData: Icons.search_rounded,
          onPressed: () {},
        ),
        const Gap(10),
        CustomDefaultButton(
          iconData: Icons.settings_rounded,
          onPressed: () => Navigator.pushNamed(context, Routes.kSettingsScreen),
        ),
      ],
    );
  }
}
