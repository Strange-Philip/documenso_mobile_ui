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
    return Scaffold(
      appBar: buildAppbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(
          children: [
            Container(
              height: 200,
              // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: DocumensoColors.neutral.shade200)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/sheets_plus.png",
                      height: 90,
                      width: 120,
                    ),
                    Text("Add document",
                        style: DocumensoTypography()
                            .body1SemiBold
                            .copyWith(color: DocumensoColors.neutral.shade400)),
                    Text("Tap here to upload your document.",
                        style: DocumensoTypography()
                            .body2SemiBold
                            .copyWith(color: DocumensoColors.neutral.shade300)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
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
        GestureDetector(
          onTap: () => showNotificationBtnSheet(context),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: DocumensoColors.primary.shade400,
            child: Text("1",
                textAlign: TextAlign.center,
                style: DocumensoTypography()
                    .captionMedium
                    .copyWith(color: DocumensoColors.neutral.shade800)),
          ),
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
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("assets/icons/close.svg",
                                color: DocumensoColors.black)),
                      ],
                    ),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    buildtabs(name: "My Profile", hasArrow: false, icon: "assets/icons/user.svg"),
                    buildtabs(
                        name: "Billing", hasArrow: false, icon: "assets/icons/credit-card.svg"),
                    buildtabs(name: "Settings", hasArrow: false, icon: "assets/icons/settings.svg"),
                    buildtabs(
                        name: "Keyboard shortcuts",
                        hasArrow: false,
                        icon: "assets/icons/keyboard.svg"),
                    buildtabs(name: "Team", hasArrow: false, icon: "assets/icons/users.svg"),
                    buildtabs(
                        name: "Invite users", hasArrow: true, icon: "assets/icons/credit-card.svg"),
                    buildtabs(name: "New team", hasArrow: false, icon: "assets/icons/plus.svg"),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    buildtabs(name: "Github", hasArrow: false, icon: "assets/icons/users.svg"),
                    buildtabs(
                        name: "Support", hasArrow: true, icon: "assets/icons/credit-card.svg"),
                    buildtabs(name: "Api", hasArrow: false, icon: "assets/icons/cloud.svg"),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    buildtabs(name: "Logout", hasArrow: false, icon: "assets/icons/log-out.svg"),
                  ],
                ),
              ),
            ));
  }

  void showNotificationBtnSheet(BuildContext context) {
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
                        Text("Notifications",
                            textAlign: TextAlign.center,
                            style: DocumensoTypography()
                                .title
                                .copyWith(color: DocumensoColors.neutral.shade800)),
                        const Spacer(),
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("assets/icons/close.svg",
                                color: DocumensoColors.black)),
                      ],
                    ),
                    Divider(
                      color: DocumensoColors.neutral.shade200,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 16,
                                  backgroundColor: DocumensoColors.primary.shade200,
                                  child: Text("TK",
                                      textAlign: TextAlign.center,
                                      style: DocumensoTypography()
                                          .body2Medium
                                          .copyWith(color: DocumensoColors.primary.shade600))),
                              const SizedBox(
                                width: 8,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Timur Ercan",
                                        style: DocumensoTypography().body2SemiBold.copyWith(
                                            color: DocumensoColors.neutral.shade800, height: 1.4)),
                                    TextSpan(
                                        text: " has invited you to\nsign",
                                        style: DocumensoTypography().body2Medium.copyWith(
                                            color: DocumensoColors.neutral.shade400, height: 1.4)),
                                    TextSpan(
                                        text: " Document.pdf",
                                        style: DocumensoTypography().body2Medium.copyWith(
                                            color: DocumensoColors.neutral.shade800, height: 1.4)),
                                    TextSpan(
                                        text: " - 2h ago",
                                        style: DocumensoTypography().body2Medium.copyWith(
                                            color: DocumensoColors.neutral.shade400, height: 1.4)),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset("assets/icons/check.svg",
                                  height: 20, width: 20, color: DocumensoColors.neutral.shade400),
                            ],
                          ),
                        ),
                        PreferredSize(
                          preferredSize: const Size.fromHeight(1),
                          child: Container(
                            color: DocumensoColors.neutral.shade100,
                            height: 1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }

  Padding buildtabs({required String name, required bool hasArrow, required String icon}) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            color: DocumensoColors.neutral.shade500,
            height: 16,
            width: 16,
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
              ? SvgPicture.asset(
                  "assets/icons/chevron_right.svg",
                  color: DocumensoColors.neutral.shade500,
                  height: 24,
                  width: 24,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
