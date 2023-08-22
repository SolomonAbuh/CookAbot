import 'package:cook_a_bot/src/costants.dart';
import 'package:cook_a_bot/src/extentions.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../../builder_page/builder_page.dart';

class CtaTextAndButton extends StatelessWidget {
  const CtaTextAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get Creative\nwith Bot\nAvatars',
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              height: 1,
              color: AppColors.darkBlue,
            ),
          ),
          1.h.sH(),
          Text(
            'Design eye-catching bot avatars\nand upgrade your profile picture\nexperience',
            style: GoogleFonts.montserrat(
              fontSize: 5.sp,
              fontWeight: FontWeight.w300,
              color: AppColors.darkBlue,
              height: 1.3,
            ),
          ),
          4.h.sH(),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(BuilderPage.routeName);
                },
                child: Text(
                  'Start now',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 3.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              2.w.sW(),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.sp,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: AppColors.darkBlue,
                      ),
                      1.w.sW(),
                      Text(
                        'Watch video',
                        style: GoogleFonts.montserrat(
                          color: AppColors.darkBlue,
                          fontSize: 3.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
