import 'package:documenso/theme/typography.dart';
import 'package:flutter/material.dart';

class DocumensoText {
  DocumensoText(this.typography);

  DocumensoTypography typography;


  /// bold text
  Text extraLarge(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.extraLarge);

  Text largeTitle(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.largeTitle);

  Text appbarTitle(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.appbarTitle);

  Text sectionTitle(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.sectionTitle);

  Text header(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.header);

  Text body(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.body);

  Text subheader(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.subheader);

  Text button(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.button);

  Text caption(String text, {Color? textColor, TextAlign? textAlign}) =>
      Text(text, textAlign: textAlign, style: typography.caption);
}
