import 'package:flutter/material.dart';

// https://stackoverflow.com/a/63068152/644571
double _heightCalc(int pxHeight, int fontSize) => pxHeight / fontSize;

class DocumensoTypography {
  DocumensoTypography();

  TextStyle get baseTextStyle => const TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: 'Inter',
      );

  /// bold  TextStyle styles
  TextStyle get extraLarge => baseTextStyle.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 32,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 34),
      );

  /// Title 1
  TextStyle get largeTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 32,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(48, 32),
      );

  /// Title 2
  TextStyle get title => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 24,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(42, 24),
      );

  /// Title 3
  TextStyle get titleSmall => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 20),
      );

  /// Body 1 Semi Bold
  TextStyle get body1SemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 16),
      );

  /// Body 1 Medium
  TextStyle get body1Medium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 16),
      );

  /// Body 1 Regular
  TextStyle get body1Regular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 16),
      );

  /// Body 2 Semi Bold
  TextStyle get body2SemiBold => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 14),
      );

  /// Body 2 Medium
  TextStyle get body2Medium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 14),
      );

  /// Body 2 Regular
  TextStyle get body2Regular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(32, 14),
      );

  /// Caption Medium
  TextStyle get captionMedium => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 12),
      );

  /// Caption Regular
  TextStyle get captionRegular => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(28, 12),
      );

  TextStyle get appbarTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 27),
      );

  TextStyle get sectionTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(23, 16),
      );

  TextStyle get header => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get body => baseTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get subheader => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(16, 12),
      );

  TextStyle get button => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );

  TextStyle get caption => baseTextStyle.copyWith(
        fontSize: 14,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(17, 14),
      );
}
