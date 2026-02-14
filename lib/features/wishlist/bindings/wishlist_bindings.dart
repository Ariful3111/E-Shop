import 'package:e_shop/features/wishlist/controller/wishlist_controller.dart';
import 'package:get/get.dart';

class WishlistBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishlistController());
  }
}
