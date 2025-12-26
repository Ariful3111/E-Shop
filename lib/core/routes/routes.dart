import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/features/auth/bindings/login_bindings.dart';
import 'package:e_shop/features/auth/bindings/onboarding_bindings.dart';
import 'package:e_shop/features/auth/views/login_view.dart';
import 'package:e_shop/features/auth/views/onboarding_view.dart';
import 'package:get/get.dart';

final List<GetPage> appRoutes = [
    GetPage(name: AppRoutes.onboardingView, page:()=> OnboardingView(),binding: OnboardingBindings()),
    GetPage(name: AppRoutes.loginView, page: ()=>LoginView(),binding: LoginBindings())
];
