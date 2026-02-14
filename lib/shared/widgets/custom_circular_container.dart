import 'package:e_shop/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const CustomCircularContainer({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color, this.padding, this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height ?? MediaQuery.heightOf(context) *0.4,
      width: width ?? MediaQuery.widthOf(context),
      decoration: BoxDecoration(
        color: color ?? AppColors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(radius ?? 400.r),
      ),
    );
  }
}
