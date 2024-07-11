import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  static SvgPicture bgSvg = SvgPicture.asset("assets/images/bg.svg");
  static Image bgPng = Image.asset(
    "assets/images/bg.png",
    fit: BoxFit.cover,
  );
  static SvgPicture notesSvg = SvgPicture.asset("assets/images/notes.svg");
  static SvgPicture notes2Svg = SvgPicture.asset("assets/images/notes2.svg");
  static SvgPicture googleSvg = SvgPicture.asset("assets/images/google.svg");
}
