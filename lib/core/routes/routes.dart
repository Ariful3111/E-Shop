import 'package:e_shop/core/routes/app_routes.dart';
import 'package:e_shop/features/auth/bindings/auth_bindings.dart';
import 'package:e_shop/features/auth/bindings/onboardings_bindings.dart';
import 'package:e_shop/features/auth/views/email_verification.dart';
import 'package:e_shop/features/auth/views/forget_password_view.dart';
import 'package:e_shop/features/auth/views/forgot_email.dart';
import 'package:e_shop/features/auth/views/login_view.dart';
import 'package:e_shop/features/auth/views/onboarding_view.dart';
import 'package:e_shop/features/auth/views/signup_view.dart';
import 'package:e_shop/features/bottom_navigation_bar/bindings/main_bindings.dart';
import 'package:e_shop/features/bottom_navigation_bar/views/bottom_navigation.dart';
import 'package:e_shop/features/home/bindings/home_bindings.dart';
import 'package:e_shop/features/home/views/home_view.dart';
import 'package:e_shop/features/profile/bindings/profile_bindings.dart';
import 'package:e_shop/features/profile/views/profile_view.dart';
import 'package:e_shop/features/shop/bindings/store_bindings.dart';
import 'package:e_shop/features/shop/views/store_view.dart';
import 'package:e_shop/features/wishlist/bindings/wishlist_bindings.dart';
import 'package:e_shop/features/wishlist/views/wishlist_view.dart';
import 'package:get/get.dart';

final List<GetPage> appRoutes = [
  GetPage(
    name: AppRoutes.onboardingView,
    page: () => OnboardingView(),
    binding: OnboardingsBindings(),
  ),
  GetPage(
    name: AppRoutes.loginView,
    page: () => LoginView(),
    binding: AuthBindings(),
  ),
  GetPage(
    name: AppRoutes.signupView,
    page: () => SignupView(),
    binding: AuthBindings(),
  ),
  GetPage(
    name: AppRoutes.forgetPasswordView,
    page: () => ForgetPasswordView(),
    binding: AuthBindings(),
  ),
  GetPage(
    name: AppRoutes.bottomNavigation,
    page: () => BottomNavigation(),
    binding: MainBindings(),
  ),
  GetPage(
    name: AppRoutes.homeView,
    page: () => HomeView(),
    bindings: [HomeBindings()],
  ),
  GetPage(
    name: AppRoutes.storeView,
    page: () => StoreView(),
    binding: StoreBindings(),
  ),
  GetPage(
    name: AppRoutes.wishlistView,
    page: () => WishlistView(),
    binding: WishlistBindings(),
  ),
  GetPage(
    name: AppRoutes.profileView,
    page: () => ProfileView(),
    binding: ProfileBindings(),
  ),
  GetPage(
    name: AppRoutes.emailVerification,
    page: () => EmailVerification(),
    binding: AuthBindings(),
  ),
  GetPage(
    name: AppRoutes.forgotEmail,
    page: () => ForgotEmail(),
    binding: AuthBindings(),
  ),
];
