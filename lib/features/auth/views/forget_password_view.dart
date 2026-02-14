import 'package:e_shop/features/auth/controller/forget_password_controller.dart';
import 'package:e_shop/shared/widgets/custom_back_button.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_form_field.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/email_send_view.dart';
import 'package:e_shop/shared/widgets/success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPasswordController = Get.find();
    return CustomScaffold(
      padding: EdgeInsets.all(36.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackButton(),
          SizedBox(height: 50.h),
          CustomTextPrimary(text: 'Forget Password'),
          SizedBox(height: 8.h),
          CustomGrayText(
            text:
                'No worries! Enter your registered email address, and we\'ll help you reset your password',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 48.h),
          CustomTextFormField(
            controller: forgetPasswordController.emailController,
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct_right),
          ),
          SizedBox(height: 24.h),
          CustomPrimaryButton(
            onTap: () {
              Get.to(
                EmailSendView(
                  title: 'Password Reset Email Sent',
                  subTitle:
                      'We\'ve sent a password reset link to your email. Please check your inbox and follow the instructions to reset your password',
                  onTap: () {
                    Get.to(
                      SuccessPage(
                        title: 'Your Password Successfully Reset',
                        subTitle:
                            'Congratulations! Your password has been successfully reset.Now you can login you\'r account with this new password. Let\'s get started!',
                        onTap: () {},
                      ),
                    );
                  },
                ),
              );
            },
            text: 'Submit',
          ),
        ],
      ),
    );
  }
}
