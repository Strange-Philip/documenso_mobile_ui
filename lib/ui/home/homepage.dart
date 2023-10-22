import 'package:documenso/theme/colors.dart';
import 'package:documenso/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar());
  }

  AppBar buildAppbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/logo.svg",
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text("Documenso",
                textAlign: TextAlign.center,
                style: DocumensoTypography()
                    .body2SemiBold
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
          ],
        ),
      ),
      centerTitle: false,
      backgroundColor: DocumensoColors.white,
      actions: [
        CircleAvatar(
          radius: 15,
          backgroundColor: DocumensoColors.primary.shade400,
          child: Text("1",
              textAlign: TextAlign.center,
              style: DocumensoTypography()
                  .captionMedium
                  .copyWith(color: DocumensoColors.neutral.shade800)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: DocumensoColors.neutral.shade100,
            child: Text("TE",
                textAlign: TextAlign.center,
                style: DocumensoTypography()
                    .captionMedium
                    .copyWith(color: DocumensoColors.neutral.shade800)),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: DocumensoColors.neutral.shade200,
          height: 1,
        ),
      ),
    );
  }
}
