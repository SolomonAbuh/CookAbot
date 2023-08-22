import 'package:cook_a_bot/src/costants.dart';
import 'package:cook_a_bot/src/extentions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LandingNavBar extends StatelessWidget {
  const LandingNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12.h,
      child: Row(children: [
        Image.asset(
          'assets/logo.png',
          height: 18,
        ),
        const Spacer(),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                'Contact dev',
                style: GoogleFonts.montserrat(
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            5.w.sW(),
            InkWell(
              onTap: () {},
              child: Text(
                'About Us',
                style: GoogleFonts.montserrat(
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            5.w.sW(),
            InkWell(
              onTap: () {},
              child: Text(
                'Twitter',
                style: GoogleFonts.montserrat(
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
