import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/core/constants/images_path.dart';
import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmailSendView extends StatelessWidget {
  const EmailSendView({super.key});

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
              onTap: () {
                Get.offAllNamed(AppRoutes.loginView);
              },
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
          CustomTextPrimary(text: 'Password Reset Email Sent'),
          SizedBox(height: 8.h),
          CustomTextSecondary(text: 'unknownpro@gmail.com'),
          SizedBox(height: 8.h),
          CustomGrayText(
            text:
                'We\'ve sent a password reset link to your email. Please check your inbox and follow the instructions to reset your password',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 48.h),
          CustomPrimaryButton(onTap: () {}, text: 'Done'),
          SizedBox(height: 16.h),
          TextButton(
            onPressed: () {},
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
