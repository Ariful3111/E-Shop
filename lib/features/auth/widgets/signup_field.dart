import 'package:e_shop/features/auth/controller/signup_controller.dart';
import 'package:e_shop/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupField extends StatelessWidget {
  const SignupField({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find();
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                prefixIcon: Icon(Iconsax.user),
                controller: signupController.firstNameController,
                labelText: 'First Name',
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: CustomTextFormField(
                controller: signupController.lastNameController,
                labelText: 'Last Name',
                prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          controller: signupController.emailController,
          labelText: 'Email',
          prefixIcon: Icon(Iconsax.direct_right),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          controller: signupController.phoneController,
          labelText: 'Phone Number',
          prefixIcon: Icon(Iconsax.call),
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          controller: signupController.passController,
          labelText: 'Password',
          prefixIcon: Icon(Iconsax.password_check),
        ),
      ],
    );
  }
}
