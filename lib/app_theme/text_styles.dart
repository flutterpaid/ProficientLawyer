import 'package:flutter/material.dart';
import 'screen_util-extension.dart';

enum FontType { bold, semiBold, medium, regular, light }

class AppTextStyles {
  static FontWeight fontType(FontType fontType) {
    switch (fontType) {
      case FontType.bold:
        return FontWeight.w700;
      case FontType.semiBold:
        return FontWeight.w600;
      case FontType.medium:
        return FontWeight.w500;
      case FontType.regular:
        return FontWeight.w400;
      case FontType.light:
        return FontWeight.w300;
      default:
        return FontWeight.w400;
    }
  }

  static TextStyle textStyle({
    FontType fontType,
    Color color,
    double size,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: AppTextStyles.fontType(fontType),
    );
  }

  static TextStyle s0(Color color) => AppTextStyles.textStyle(
        size: 18.f,
        color: color,
        fontType: FontType.light,
      );

  static TextStyle s1(Color color) => AppTextStyles.textStyle(
        size: 24.f,
        color: color,
        fontType: FontType.regular,
      );

  static TextStyle s2(Color color) => AppTextStyles.textStyle(
        size: 28.f,
        color: color,
        fontType: FontType.regular,
      );

  static TextStyle s3(Color color) => AppTextStyles.textStyle(
        size: 40.f,
        color: color,
        fontType: FontType.medium,
      );
}
