import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSecondaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final String text;
  final double? radius;
  final double? fontSize;
  final BoxDecoration? boxDecoration;
  final Color? color;
  final Color? fontColor;
  final double? borderWidth;
  final Color? borderColor;
  const CustomSecondaryButton({
    super.key,
    required this.onTap,
    this.height,
    this.width,
    required this.text,
    this.radius,
    this.boxDecoration,
    this.color,
    this.fontSize,
    this.fontColor,
    this.borderWidth,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 46.h,
        width: width ?? MediaQuery.widthOf(context),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: borderWidth ?? 1.r,
            color:isDark? borderColor?? AppColors.white:borderColor ?? AppColors.black,
          ),
          borderRadius: BorderRadius.circular(radius ?? 10.r),
        ),
        child: Center(
          child: CustomTextPrimary(
            text: text,
            fontSize: fontSize ?? 16.sp,
            color:isDark? fontColor??AppColors.white :fontColor ?? AppColors.black,
          ),
        ),
      ),
    );
  }
}
