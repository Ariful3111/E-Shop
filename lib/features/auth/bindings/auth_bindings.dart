import 'package:e_shop/core/utils/helper/network_helpers.dart';
import 'package:e_shop/features/auth/controller/email_verification_controller.dart';
import 'package:e_shop/features/auth/controller/forget_password_controller.dart';
import 'package:e_shop/features/auth/controller/login_controller.dart';
import 'package:e_shop/features/auth/controller/signup_controller.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:get/get.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => SignupController());
    Get.lazyPut(() => ForgetPasswordController());
    Get.lazyPut(() => NetworkManager());
    Get.lazyPut(() => AuthRepoController());
    Get.lazyPut(() => EmailVerificationController());
  }
}
