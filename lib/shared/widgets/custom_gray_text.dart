import 'package:e_shop/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomGrayText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  const CustomGrayText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color, this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.nunito(
        fontSize: fontSize ?? 12.sp,
        fontWeight: fontWeight ?? FontWeight.w700,
        color: color ?? AppColors.darkGrey,
      ),
    );
  }
}
