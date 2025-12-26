import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/features/auth/controller/login_controller.dart';
import 'package:e_shop/shared/mixins/email_validation.dart';
import 'package:e_shop/shared/mixins/password_validation.dart';
import 'package:e_shop/shared/widgets/custom_text_form_field.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginField extends StatelessWidget {
  const LoginField({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          validator: emailValidation,
          controller: loginController.emailController,
          labelText: 'Email',
          prefixIcon: Icon(Iconsax.direct_right),
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        SizedBox(height: 16.h),
        CustomTextFormField(
          validator: passwordValidation,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: loginController.passController,
          labelText: 'Password',
          prefixIcon: Icon(Iconsax.password_check),
          suffixIcon: Icon(Iconsax.eye),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                CustomTextSecondary(text: 'Remember Me'),
              ],
            ),
            TextButton(onPressed: () {
              
            }, child: CustomTextSecondary(text: 'Forget Password?',fontSize: 10.sp,color: AppColors.primary,)),
          ],
        ),
      ],
    );
  }
}
