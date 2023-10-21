import 'package:documenso/theme/colors.dart';
import 'package:documenso/theme/typography.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool isEnabled;
  const SecondaryButton({super.key, required this.title, this.onPressed, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(maxWidth: double.infinity, minWidth: 200),
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: DocumensoColors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: DocumensoColors.neutral.shade200, width: 1),
        ),
        child: Text(
          title,
          style: DocumensoTypography().body2Medium.copyWith(color: DocumensoColors.black),
        ),
      ),
    );
  }
}
