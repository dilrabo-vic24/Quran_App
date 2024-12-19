import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran_app/presentatioms/widgets/stack_picture_container.dart';
import 'package:quran_app/presentatioms/widgets/surah_widget.dart';
import 'package:quran_app/utils/app_colors.dart';
import 'package:quran_app/utils/app_icons.dart';
import 'package:quran_app/utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppIcons.menuIcon),
        title: customTextStyle(
          text: "Quran App",
          fontWeight: FontWeight.w700,
        ),
        actions: [SizedBox(width: 70.w, child: Icon(Icons.search))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(AppIcons.bookIcon), label: "Book"),
          BottomNavigationBarItem(
              icon: Image.asset(AppIcons.lightIcon), label: "Light"),
          BottomNavigationBarItem(
              icon: Image.asset(AppIcons.namozIcon), label: "namaz"),
          BottomNavigationBarItem(
              icon: Image.asset(AppIcons.prayIcon), label: "pray"),
          BottomNavigationBarItem(
              icon: Image.asset(AppIcons.markedIcon), label: "marked"),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextStyle(
                text: "Asslamualaikum",
                fontSize: 18.sp,
                textColor: AppColors.greyShriftColor),
            customTextStyle(
                text: "Tanvir Ahassan",
                fontSize: 24.sp,
                textColor: AppColors.darkShriftColor,
                fontWeight: FontWeight.w600),
            const StackPictureContainer(),
            SizedBox(
              height: 40.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: customTextStyle(
                        text: "Surah",
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: customTextStyle(
                        text: "Para",
                        fontSize: 26.sp,
                        textColor: AppColors.greyShriftColor),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: customTextStyle(
                        text: "Page",
                        fontSize: 26.sp,
                        textColor: AppColors.greyShriftColor),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: customTextStyle(
                        text: "Hijb",
                        fontSize: 26.sp,
                        textColor: AppColors.greyShriftColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SurahWidget(
                    number: 1,
                    subInfo: "Meccan ● 7 verses",
                    surahNameArabic: "ةحتافلا",
                    surahNameLatin: "Al-Fatiah",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 2,
                    subInfo: "Medinian ● 286 verses",
                    surahNameArabic: "ةرقبلا",
                    surahNameLatin: "Al-Baqarah",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 3,
                    subInfo: "Meccan ● 200 verses",
                    surahNameArabic: "ناﺮﻤﻋ لآ",
                    surahNameLatin: "Al 'Imran",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 4,
                    subInfo: "Meccan ● 176 verses",
                    surahNameArabic: "ءاسنلا",
                    surahNameLatin: "An-Nisa",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 5,
                    subInfo: "Meccan ● 7 verses",
                    surahNameArabic: "ةحتافلا",
                    surahNameLatin: "Al-Fatiah",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 6,
                    subInfo: "Medinian ● 286 verses",
                    surahNameArabic: "ةرقبلا",
                    surahNameLatin: "Al-Baqarah",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 7,
                    subInfo: "Meccan ● 200 verses",
                    surahNameArabic: "ناﺮﻤﻋ لآ",
                    surahNameLatin: "Al 'Imran",
                  ),
                  Divider(
                    height: 25.h,
                  ),
                  const SurahWidget(
                    number: 8,
                    subInfo: "Meccan ● 176 verses",
                    surahNameArabic: "ءاسنلا",
                    surahNameLatin: "An-Nisa",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
