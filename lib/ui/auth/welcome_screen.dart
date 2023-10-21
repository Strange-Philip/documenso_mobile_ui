import 'package:documenso/theme/typography.dart';
import 'package:documenso/ui/components/primary_button.dart';
import 'package:documenso/ui/components/secondary_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("assets/logo.png"),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: Text("Welcome to Documenso",
                  textAlign: TextAlign.center, style: DocumensoTypography().title),
            ),
            const SizedBox(
              height: 32,
            ),
            const PrimaryButton(title: "Sign up", isEnabled: true),
            const SizedBox(
              height: 16,
            ),
            const SecondaryButton(title: "Log in", isEnabled: true),
          ],
        ),
      ),
    );
  }
}
