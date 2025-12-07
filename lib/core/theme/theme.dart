import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/theme/widgets_theme/appbar_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/bottom_sheet_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/checkbox_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/chip_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/elevated_button_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/outlined_button_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/text_field_theme.dart';
import 'package:e_shop/core/theme/widgets_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheet.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheet.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
  );
}
