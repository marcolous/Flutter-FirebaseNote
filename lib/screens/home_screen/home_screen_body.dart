import 'package:firebase_note/screens/home_screen/home_screen_app_bar.dart';
import 'package:firebase_note/utils/app_images.dart';
import 'package:firebase_note/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const HomeScreenAppBar(),
            const Gap(150),
            AppImages.createNotePng,
            Text(
              textAlign: TextAlign.center,
              'Create your first note !',
              style: Style.style20(context),
            )
          ],
        ),
      ),
    );
  }
}
