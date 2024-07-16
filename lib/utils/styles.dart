import 'package:firebase_note/utils/screen_size.dart';
import 'package:flutter/material.dart';

class Style {
  static TextStyle style14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
      fontFamily: 'Urbanist',
      color: const Color(0xff8391A1),
    );
  }

  static TextStyle style15Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w500,
      fontFamily: 'Urbanist',
      color: const Color(0xff8391A1),
    );
  }

  static TextStyle style15(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w600,
      fontFamily: 'Urbanist',
      color: Colors.white,
    );
  }

  static TextStyle style16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Urbanist',
      color: const Color(0xff838BA1),
    );
  }

  static TextStyle style30(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.bold,
      fontFamily: 'Urbanist',
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = ScreenSize.width(context) / 400;
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
