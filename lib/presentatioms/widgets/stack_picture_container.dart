import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/utils/app_colors.dart';
import 'package:quran_app/utils/app_icons.dart';
import 'package:quran_app/utils/app_images.dart';
import 'package:quran_app/utils/text_style.dart';

class StackPictureContainer extends StatelessWidget {
  const StackPictureContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.linearGradientStart,
            AppColors.linearGradientEnd
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            left: 20.w,
            child: Image.asset(
              AppIcons.littleBookIcon,
            ),
          ),
          Positioned(
            top: 20.h,
            left: 50.w,
            child: customTextStyle(
              text: "Last Read",
              fontSize: 15.sp,
              textColor: AppColors.whiteColor,
            ),
          ),
          Positioned(
            top: 60.h,
            left: 20.w,
            child: customTextStyle(
                text: "Al-Fatiah",
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textColor: AppColors.whiteColor),
          ),
          Positioned(
            top: 80.h,
            left: 20.w,
            child: customTextStyle(
              text: "Ayah No: 1",
              fontSize: 14.sp,
              textColor: AppColors.whiteColor,
            ),
          ),
          Positioned(
            top: 35.h,
            left: 160.w,
            child: Image.asset(AppImages.mainBookImage),
          ),
        ],
      ),
    );
  }
}