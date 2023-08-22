import 'package:cook_a_bot/src/extentions.dart';
import 'package:flutter/material.dart';
import 'widgets/cta_text_and_button.dart';
import 'widgets/hero_page.dart';
import 'widgets/landing_nav_bar.dart';

class LandingPage extends StatelessWidget {
  static const String routeName = '/';
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          LandingNavBar(),
          Expanded(
            child: Row(
              children: [
                CtaTextAndButton(),
                HeroImage(),
              ],
            ),
          ),
        ],
      ).pagePadding(),
    );
  }
}
