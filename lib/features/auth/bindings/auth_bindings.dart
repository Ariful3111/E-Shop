import 'package:e_shop/features/auth/controller/forget_password_controller.dart';
import 'package:e_shop/features/auth/controller/login_controller.dart';
import 'package:e_shop/features/auth/controller/signup_controller.dart';
import 'package:get/get.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => SignupController());
    Get.lazyPut(() => ForgetPasswordController());
  }
}
