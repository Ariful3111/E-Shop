import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final String text;
  final double? radius;
  final double? fontSize;
  final BoxDecoration? boxDecoration;
  final Color ?color;
  final Color ?fontColor;
  const CustomPrimaryButton({
    super.key,
    required this.onTap,
    this.height,
    this.width,
    required this.text, this.radius, this.boxDecoration, this.color, this.fontSize, this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: Container(
      height:height?? 46.h,
      width: width?? MediaQuery.widthOf(context),
      decoration: BoxDecoration(
        color:color?? AppColors.buttonPrimary,
        borderRadius: BorderRadius.circular(radius??10.r),
      ),
      child: Center(
        child: CustomTextPrimary(text: text,fontSize:fontSize?? 16.sp,color:fontColor?? AppColors.white,),
      ),
    ));
  }
}
