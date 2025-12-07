import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeMd,
      color: AppColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeSm,
      color: AppColors.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AppColors.black.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: AppColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeMd,
      color: AppColors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeSm,
      color: AppColors.white,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AppColors.white.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: AppColors.warning),
    ),
  );
}
