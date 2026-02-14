import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/features/auth/views/auth_option.dart';
import 'package:e_shop/features/auth/widgets/signup_field.dart';
import 'package:e_shop/shared/mixins/social_auth_button.dart';
import 'package:e_shop/shared/widgets/custom_back_button.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/email_send_view.dart';
import 'package:e_shop/shared/widgets/success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupView extends StatelessWidget with SocialAuthButton {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      padding: EdgeInsets.all(36.r),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(),
            SizedBox(height: 50.h),
            CustomTextPrimary(text: 'Let\'s Get You Registered'),
            SizedBox(height: 24.h),
            SignupField(),
            SizedBox(height: 16.h),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                RichText(
                  text: TextSpan(
                    children: [
                      plainText(text: 'I agree to ', context: context),
                      underlineText(text: 'Privacy Policy'),
                      plainText(text: ' and ', context: context),
                      underlineText(text: "Terms of use"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 28.h),
            CustomPrimaryButton(
              onTap: () {
                Get.to(
                  EmailSendView(
                    title: 'Verify your email address!',
                    subTitle:
                        'We\'ve sent a verification link to your email. Please check your inbox and click the link to verify your account',
                    onTap: () {
                      Get.to(
                        SuccessPage(
                          title: 'Your account successfully created',
                          subTitle:
                              'Congratulations! Your account has been successfully created. You can now explore all the amazing features, start personalizing your experience, and enjoy seamless access to our services. Let\'s get started!',
                          onTap: () {},
                        ),
                      );
                    },
                  ),
                );
              },
              text: 'Create Account',
            ),
            SizedBox(height: 24.h),
            AuthOption(text: 'Or Sign up  With'),
            SizedBox(height: 16.h),
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
      ),
    );
  }

  InlineSpan plainText({required String text, required BuildContext context}) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return TextSpan(
      text: 'I agree to',
      style: GoogleFonts.nunito(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: isDark ? AppColors.white : AppColors.black,
      ),
    );
  }

  InlineSpan underlineText({required String text}) {
    return TextSpan(
      text: text,
      style: GoogleFonts.nunito(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.primary,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primary,
      ),
    );
  }
}
