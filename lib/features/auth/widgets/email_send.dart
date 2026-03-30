import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/core/constants/images_path.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailSend extends StatelessWidget {
  final String title;
  final String subTitle;
  final String email;
  final VoidCallback onTap;
  final VoidCallback onResend;
  final VoidCallback onBack;
  const EmailSend({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.email, required this.onResend, required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return CustomScaffold(
      padding: EdgeInsets.all(36.r),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: onBack,
              child: Image.asset(
                IconsPath.close,
                height: 32.h,
                width: 32.w,
                color: isDark ? AppColors.white : null,
              ),
            ),
          ),
          SizedBox(height: 27.h),
          Image.asset(
            ImagesPath.emailSend,
            height: 295.h,
            width: MediaQuery.widthOf(context),
          ),
          SizedBox(height: 8.h),
          CustomTextPrimary(text: title),
          SizedBox(height: 8.h),
          CustomTextSecondary(text: email),
          SizedBox(height: 8.h),
          CustomGrayText(
            text: subTitle,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 48.h),
          CustomPrimaryButton(onTap: onTap, text: 'Continue'),
          SizedBox(height: 16.h),
          TextButton(
            onPressed: onResend,
            child: CustomGrayText(
              text: 'Resend Email',
              fontWeight: FontWeight.w400,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
