import 'package:documenso/theme/colors.dart';
import 'package:documenso/theme/typography.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final bool isEnabled;
  const PrimaryButton({super.key, required this.title, this.onPressed, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // height: 50,
        // width: 200,
        constraints: const BoxConstraints(maxWidth: double.infinity, minWidth: 200),
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled ? DocumensoColors.primary.shade400 : DocumensoColors.neutral.shade200,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          title,
          style: DocumensoTypography().body2Medium.copyWith(color: DocumensoColors.black),
        ),
      ),
    );
  }
}
