import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthOption extends StatelessWidget {
  final String text;
  const AuthOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      children: [
        Expanded(
          child: Divider(
            indent: 60.w,
            endIndent: 5.w,
            color: isDark ? AppColors.darkGrey : AppColors.grey,
          ),
        ),
        CustomTextSecondary(
          text: text,
          fontSize: 12.sp,
          color: Color(0xFFBEBEBE),
        ),
        Expanded(
          child: Divider(
            indent: 5.w,
            endIndent: 60.w,
            color: isDark ? AppColors.darkGrey : AppColors.grey,
          ),
        ),
      ],
    );
  }
}
