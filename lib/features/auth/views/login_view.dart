import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/features/auth/widgets/login_field.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_secondary_button.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:e_shop/shared/mixins/social_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget with SocialAuthButton {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return CustomScaffold(
      padding: EdgeInsets.all(36.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextPrimary(text: 'Shop Smarter'),
          SizedBox(height: 8.h),
          CustomGrayText(
            text:
                'Log in to Access Exclusive Deals and Simplify Your Shopping Experience',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 24.h),
          LoginField(),
          SizedBox(height: 24.h),
          CustomPrimaryButton(onTap: () {}, text: 'Sign In'),
          SizedBox(height: 8.h),
          CustomSecondaryButton(onTap: () {}, text: 'Create Account'),
          SizedBox(height: 24.h),
          Row(
            children: [
              Expanded(
                child: Divider(
                  indent: 60.w,
                  endIndent: 5.w,
                  color: isDark ? AppColors.darkGrey : AppColors.grey,
                ),
              ),
              CustomTextSecondary(
                text: 'or Sign In With',
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
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myButton(icon: IconsPath.google, onTap: () {}),
              SizedBox(width: 11.w),
              myButton(icon: IconsPath.facebook, onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
