import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/presentatioms/widgets/start_button.dart';
import 'package:quran_app/utils/app_colors.dart';
import 'package:quran_app/utils/app_images.dart';
import 'package:quran_app/utils/text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.sp),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customTextStyle(
                  text: "Quran App",
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: 15.h,
                ),
                customTextStyle(
                  text: "Learn Quran and\nRecite once everyday",
                  fontSize: 18.sp,
                  textColor: AppColors.lightShriftColor,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.r),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 320.w,
                        height: 400.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.r),
                          ),
                          color: AppColors.mainColor,
                        ),
                      ),
                      Positioned(
                        top: 180.h,
                        left: 10.w,
                        child: Image.asset(AppImages.mainBook1Image),
                      ),
                      Positioned(
                        top: 100.h,
                        child: Image.asset(AppImages.cloud),
                      ),
                      Positioned(
                        top: 70.h,
                        left: 200.w,
                        child: Image.asset(AppImages.cloud),
                      ),
                      Positioned(
                        top: 130.h,
                        left: 250.w,
                        child: Image.asset(AppImages.cloud),
                      ),
                      Positioned(
                        top: 50.h,
                        left: 10.w,
                        child: Image.asset(AppImages.star1),
                      ),
                      Positioned(
                        top: 60.h,
                        left: 130.w,
                        child: Image.asset(AppImages.star1),
                      ),
                      Positioned(
                        top: 10.h,
                        left: 120.w,
                        child: Image.asset(AppImages.star2),
                      ),
                      Positioned(
                        top: 90.h,
                        left: 60.w,
                        child: Image.asset(AppImages.star2),
                      ),
                      Positioned(
                        top: 10.h,
                        left: 30.w,
                        child: Image.asset(AppImages.star3),
                      ),
                      Positioned(
                        top: 30.h,
                        left: 70.w,
                        child: Image.asset(AppImages.star3),
                      ),
                      Positioned(
                        top: 35.h,
                        left: 170.w,
                        child: Image.asset(AppImages.star3),
                      ),
                      Positioned(
                        top: 150.h,
                        left: 160.w,
                        child: Image.asset(AppImages.star3),
                      ),
                      Positioned(
                        top: 70.h,
                        left: 290.w,
                        child: Image.asset(AppImages.star3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 550.h,
              left: 60.w,
              child: StartButton(),
            )
          ],
        ),
      ),
    );
  }
}

//--------------------------------------