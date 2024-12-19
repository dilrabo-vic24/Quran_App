import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/presentatioms/screens/home_screen.dart';
import 'package:quran_app/utils/app_colors.dart';
import 'package:quran_app/utils/text_style.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: Size(200.w, 55.h),
          backgroundColor: AppColors.startButtonColor),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      child: customTextStyle(
        text: "Get Started",
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        textColor: AppColors.whiteColor,
      ),
    );
  }
}