import 'package:e_shop/features/auth/widgets/email_send.dart';
import 'package:flutter/material.dart';

class ForgotEmail extends StatelessWidget {
  const ForgotEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailSend(
      title: 'Password Reset Email Sent',
      subTitle:
          'We\'ve sent a password reset link to your email. Please check your inbox and follow the instructions to reset your password',
      onTap: () {},
      email: '',
      onResend: () {},
      onBack: () {},
    );
  }
}
