import 'package:e_shop/features/auth/controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
