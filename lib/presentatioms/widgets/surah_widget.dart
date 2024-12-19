import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/utils/app_colors.dart';
import 'package:quran_app/utils/app_icons.dart';
import 'package:quran_app/utils/text_style.dart';

class SurahWidget extends StatelessWidget {
  final int number;
  final String surahNameLatin;
  final String subInfo;
  final String surahNameArabic;
  const SurahWidget({
    super.key,
    required this.number,
    required this.surahNameLatin,
    required this.subInfo,
    required this.surahNameArabic,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppIcons.frameIcon,
                ),
                Positioned(
                  top: 5.h,
                  left: 13.w,
                  child: customTextStyle(
                    text: number.toString(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    textColor: AppColors.darkShriftColor,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextStyle(
                  text: surahNameLatin,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.darkShriftColor,
                ),
                customTextStyle(
                  text: subInfo,
                  fontSize: 14.sp,
                  textColor: AppColors.greyShriftColor,
                )
              ],
            ),
          ],
        ),
        customTextStyle(
          text: surahNameArabic,
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}