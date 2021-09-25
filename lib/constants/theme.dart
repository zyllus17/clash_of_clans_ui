import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _headline1, //20px
    headline2: _headline2, //18px
    headline3: _headline3, //14px
    // headline4: _headline4, //16px
    headline5: _headline5, //12px
  );

  static final TextStyle _headline5 = TextStyle(
    fontFamily: "Supercell",
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    fontSize: 12.sp,
  );
  static final TextStyle _headline3 = TextStyle(
    fontFamily: "Supercell",
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    fontSize: 14.sp,
  );

  static final TextStyle _headline2 = TextStyle(
    fontFamily: "Supercell",
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    fontSize: 18.sp,
  );

  static final TextStyle _headline1 = TextStyle(
    fontFamily: "Supercell",
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
    fontSize: 20.sp,
  );
}
