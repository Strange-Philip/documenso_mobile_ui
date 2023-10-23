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
          child: GestureDetector(
            onTap: () => showBtnSheet(context),
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

  void showBtnSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        isDismissible: true,
        enableDrag: true,
        context: context,
        builder: (context) => ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 600,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: DocumensoColors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Account",
                            textAlign: TextAlign.center,
                            style: DocumensoTypography()
                                .title
                                .copyWith(color: DocumensoColors.neutral.shade800)),
                        // SvgPicture.asset("assets/icons/close.svg", color: DocumensoColors.black)
                        const Spacer(),

                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                          ),
                          color: DocumensoColors.black,
                          iconSize: 24,
                        )
                      ],
                    ),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    buildtabs(name: "My Profile", hasArrow: false, icon: Icons.person_2_outlined),
                    buildtabs(name: "Billing", hasArrow: false, icon: Icons.credit_card_outlined),
                    buildtabs(name: "Settings", hasArrow: false, icon: Icons.settings_outlined),
                    buildtabs(name: "Keyboard shortcuts", hasArrow: false, icon: Icons.keyboard),
                    buildtabs(name: "Team", hasArrow: false, icon: Icons.people_alt_outlined),
                    buildtabs(name: "Invite users", hasArrow: true, icon: Icons.credit_card),
                    buildtabs(name: "New team", hasArrow: false, icon: Icons.add),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    buildtabs(name: "Github", hasArrow: false, icon: Icons.people_alt_outlined),
                    buildtabs(name: "Support", hasArrow: true, icon: Icons.credit_card_outlined),
                    buildtabs(name: "Api", hasArrow: false, icon: Icons.cloud_outlined),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    buildtabs(name: "Logout", hasArrow: false, icon: Icons.logout),
                  ],
                ),
              ),
            ));
  }

  Padding buildtabs({required String name, required bool hasArrow, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: DocumensoColors.neutral.shade500,
            size: 24,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(name,
              textAlign: TextAlign.center,
              style: DocumensoTypography()
                  .body2SemiBold
                  .copyWith(color: DocumensoColors.neutral.shade500)),
          const Spacer(),
          hasArrow
              ? Icon(
                  Icons.arrow_forward_ios,
                  color: DocumensoColors.neutral.shade500,
                  size: 24,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
