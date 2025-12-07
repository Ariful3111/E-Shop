import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:flutter/material.dart';

class MyAppBarTheme {
  MyAppBarTheme._();
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: AppSize.iconMd),
    actionsIconTheme: IconThemeData(
      color: AppColors.black,
      size: AppSize.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
    ),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.white, size: AppSize.iconMd),
    actionsIconTheme: IconThemeData(
      color: AppColors.white,
      size: AppSize.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
    ),
  );
}
