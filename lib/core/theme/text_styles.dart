import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ml_project/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle font15BlueW600 = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.blue,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
  );

  static TextStyle font23BlueW700 = TextStyle(
    fontSize: 23.sp,
    color: ColorsManager.blue,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
  );

  static TextStyle font17BlackW500 = TextStyle(
    fontSize: 17.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
  );

  static TextStyle font15GrayW400 = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
  );
}
