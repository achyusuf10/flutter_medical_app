import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/themes/text_style.dart';

import 'color_style.dart';

ThemeData myThemeData = ThemeData(
  primaryColor: green1,
  disabledColor: grey1,
  focusColor: green1,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: openSansRegular.copyWith(color: Colors.black54),
    floatingLabelStyle: openSansRegular.copyWith(color: green1),
    hintStyle: openSansRegular.copyWith(color: Colors.black54),
    errorStyle: openSansRegular.copyWith(color: Colors.red),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateColor.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return green1;
        }
        return grey1;
      },
    ),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide.none,
    ),
    buttonColor: green1,
    splashColor: Colors.black,
  ),
  colorScheme: ColorScheme.light(
    primary: green1, // header background color
    onPrimary: Colors.white, // header text color
    onSurface: green1, // body text color
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: green1,
      textStyle: openSansSemiBold,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: Size(double.infinity, 48.h),
      backgroundColor: Colors.white,
      side: BorderSide(color: green1, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: green1,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: green1,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    headline1: openSansBold.copyWith(
      fontSize: 40.sp,
      color: green1,
    ),
    headline2: openSansBold.copyWith(
      fontSize: 35.sp,
      color: green1,
    ),
    headline3: openSansSemiBold.copyWith(
      fontSize: 18.sp,
      color: green1,
    ),
    headline4: openSansRegular.copyWith(
      fontSize: 16.sp,
      color: green1,
    ),
    headline5: openSansSemiBold.copyWith(
      fontSize: 14.sp,
      color: green1,
    ),
    headline6: openSansRegular.copyWith(
      fontSize: 14.sp,
      color: green1,
    ),
    bodyText1: openSansSemiBold.copyWith(
      fontSize: 12.sp,
    ),
    bodyText2: openSansRegular.copyWith(
      fontSize: 12.sp,
    ),
    subtitle1: openSansRegular.copyWith(fontSize: 13.sp),
    button: openSansSemiBold.copyWith(
      color: Colors.white,
      fontSize: 16.sp,
    ),
  ),
);
