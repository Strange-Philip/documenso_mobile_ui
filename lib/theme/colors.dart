import 'package:flutter/material.dart';

class DocumensoColors {
  /// usage:
  /// `DocumensoColors.white`
  static const Color white = Color(0xffFFFFFF);

  /// usage:
  /// `DocumensoColors.black`
  static const Color black = Color(0xff000000);

  /// usage:
  /// `DocumensoColors.primary[50]`
  ///  `DocumensoColors.primary.shade.50`

  static final MaterialColor primary =
      MaterialColor(const Color(0xFFE4F3DD).value, const <int, Color>{
    200: Color(0xFFE4F3DD),
    400: Color(0xFFA2E771),
    500: Color(0xFF96D766),
    600: Color(0xFF7AC455),
  });

  /// usage:
  /// `DocumensoColors.gray[50]`
  /// `DocumensoColors.gray.50`
  static final MaterialColor neutral =
      MaterialColor(const Color(0xFFD9D9D9).value, const <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFE5E5E5),
    300: Color(0xFFD4D4D4),
    400: Color(0xFFA3A3A3),
    500: Color(0xFF737373),
    600: Color(0xFF525252),
    700: Color(0xFF404040),
    800: Color(0xFF262626),
    900: Color(0xFF171717),
  });

  /// usage:
  /// `DocumensoColors.secondaryBlue[500]`
  /// `DocumensoColors.secondaryBlue.500`
  static final MaterialColor secondaryBlue =
      MaterialColor(const Color(0xFFD7E4F3).value, const <int, Color>{
    300: Color(0xFFD7E4F3),
    500: Color(0xFF3879C5),
  });

  /// usage:
  /// `DocumensoColors.secondaryYellow[500]`
  /// `DocumensoColors.secondaryYellow.500`
  static final MaterialColor secondaryYellow =
      MaterialColor(const Color(0xFFE2CC05).value, const <int, Color>{
    500: Color(0xFFE2CC05),
  });

  /// usage:
  /// `DocumensoColors.secondaryRed[500]`
  /// `DocumensoColors.secondaryRed.500`
  static final MaterialColor secondaryRed =
      MaterialColor(const Color(0xFFE21205).value, const <int, Color>{
    500: Color(0xFFE21205),
  });
}
