import 'package:e_shop/features/auth/controller/signup_controller.dart';
import 'package:e_shop/shared/mixins/email_validation.dart';
import 'package:e_shop/shared/mixins/name_validation.dart';
import 'package:e_shop/shared/mixins/password_validation.dart';
import 'package:e_shop/shared/mixins/phone_validation.dart';
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
    return Form(
      key: signupController.formKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  prefixIcon: Icon(Iconsax.user),
                  controller: signupController.firstNameController,
                  labelText: 'First Name',
                  validator: nameValidation,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: CustomTextFormField(
                  controller: signupController.lastNameController,
                  labelText: 'Last Name',
                  prefixIcon: Icon(Iconsax.user),
                  validator: nameValidation,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: signupController.emailController,
            labelText: 'Email',
            prefixIcon: Icon(Iconsax.direct_right),
            validator: emailValidation,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: signupController.phoneController,
            labelText: 'Phone Number',
            prefixIcon: Icon(Iconsax.call),
            validator: phoneValidation,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          SizedBox(height: 16.h),
          Obx(
          () => CustomTextFormField(
            validator: passwordValidation,
            obscureText: !signupController.isPassVisible.value,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: signupController.passController,
            labelText: 'Password',
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: InkWell(
              onTap: () => signupController.isPassVisible.value =
                  !signupController.isPassVisible.value,
              child: Icon(
                signupController.isPassVisible.value
                    ? Iconsax.eye
                    : Iconsax.eye_slash,
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}
