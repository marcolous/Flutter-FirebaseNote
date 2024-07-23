import 'package:firebase_note/customs/custom_app_bar_button.dart';
import 'package:firebase_note/utils/routes.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: Style.style43(context),
        ),
        const Spacer(),
        CustomAppBarButton(
          onPressed: () {},
          icon: Icons.search_rounded,
        ),
        CustomAppBarButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.kSettingsScreen);
          },
          icon: Icons.settings,
        ),
        IconButton(
            onPressed: () async {
              
            },
            icon: const Icon(Icons.logout_outlined)),
      ],
    );
  }
}
