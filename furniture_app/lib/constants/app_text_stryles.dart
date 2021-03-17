import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/constants/constants.dart';

class AppTextStyles {
  static TextStyle heading1() {
    return GoogleFonts.quicksand(
      fontWeight: FontWeight.bold,
      fontSize: ScreenUtil().setSp(30),
    );
  }

  static TextStyle heading2() {
    return GoogleFonts.quicksand(
      fontWeight: FontWeight.bold,
      fontSize: ScreenUtil().setSp(23),
    );
  }

  static TextStyle hint() {
    return GoogleFonts.quicksand(
      color: AppColors.grey,
    );
  }

  static TextStyle tabName() {
    return GoogleFonts.quicksand();
  }

  static TextStyle itemName() {
    return GoogleFonts.quicksand(
      fontSize: ScreenUtil().setSp(17),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle itemDetails() {
    return GoogleFonts.quicksand(
      color: AppColors.grey,
      fontSize: ScreenUtil().setSp(12),
    );
  }

  static TextStyle itemPrice() {
    return GoogleFonts.quicksand(
      color: AppColors.white,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle callToAction() {
    return itemPrice();
  }
}
