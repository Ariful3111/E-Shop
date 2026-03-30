import 'package:e_shop/features/auth/controller/email_verification_controller.dart';
import 'package:e_shop/features/auth/controller/signup_controller.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:e_shop/features/auth/widgets/email_send.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    EmailVerificationController emailVerificationController = Get.find();
    SignupController signupController = Get.find();
    return EmailSend(
      title: 'Verify your email address!',
      subTitle:
          'We\nve sent a verification link to your email. Please check your inbox and click the link to verify your account',
      onTap: () {
        emailVerificationController.checkVerificationStatus();
      },
      email: signupController.emailController.text,
      onResend: () {
        emailVerificationController.sendVerificationEmail();
      },
      onBack: () {
        Get.find<AuthRepoController>().logout();
      },
    );
  }
}
