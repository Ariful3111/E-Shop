import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/features/auth/bindings/auth_bindings.dart';
import 'package:e_shop/features/auth/bindings/onboardings_bindings.dart';
import 'package:e_shop/features/auth/views/email_send_view.dart';
import 'package:e_shop/features/auth/views/forget_password_view.dart';
import 'package:e_shop/features/auth/views/login_view.dart';
import 'package:e_shop/features/auth/views/onboarding_view.dart';
import 'package:e_shop/features/auth/views/signup_view.dart';
import 'package:get/get.dart';

final List<GetPage> appRoutes = [
    GetPage(name: AppRoutes.onboardingView, page:()=> OnboardingView(),binding: OnboardingsBindings()),
    GetPage(name: AppRoutes.loginView, page: ()=>LoginView(),binding: AuthBindings()),
    GetPage(name: AppRoutes.signupView, page: ()=>SignupView(),binding: AuthBindings()),
    GetPage(name: AppRoutes.forgetPasswordView, page: ()=>ForgetPasswordView(),binding: AuthBindings()),
    GetPage(name: AppRoutes.emailSendView, page: ()=>EmailSendView(),binding: AuthBindings()),
];
