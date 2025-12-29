import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/features/auth/controller/forget_password_controller.dart';
import 'package:e_shop/shared/widgets/custom_back_button.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_form_field.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
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
          // SizedBox(height: AppSize.appBarHeight),
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
              Get.toNamed(AppRoutes.emailSendView);
            },
            text: 'Submit',
          ),
        ],
      ),
    );
  }
}
