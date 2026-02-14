import 'package:e_shop/features/bottom_navigation_bar/controller/bottom_navigation_controller.dart';
import 'package:get/get.dart';

class BottomNavigationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController());
  }
}
