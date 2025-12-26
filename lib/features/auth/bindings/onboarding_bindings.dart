import 'package:e_shop/features/auth/controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingBindings implements Bindings {
  @override
  void dependencies() {
    Get.create(() => OnboardingController());
  }
}
