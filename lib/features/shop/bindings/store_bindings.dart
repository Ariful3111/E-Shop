import 'package:e_shop/features/shop/controller/store_controller.dart';
import 'package:get/get.dart';

class StoreBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController());
  }
}
