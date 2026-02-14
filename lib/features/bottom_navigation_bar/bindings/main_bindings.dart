import 'package:e_shop/features/bottom_navigation_bar/bindings/bottom_navigation_bindings.dart';
import 'package:e_shop/features/home/bindings/home_bindings.dart';
import 'package:e_shop/features/profile/bindings/profile_bindings.dart';
import 'package:e_shop/features/shop/bindings/store_bindings.dart';
import 'package:e_shop/features/wishlist/bindings/wishlist_bindings.dart';
import 'package:get/get.dart';

class MainBindings implements Bindings {
  @override
  void dependencies() {
    BottomNavigationBindings().dependencies();
    HomeBindings().dependencies();
    StoreBindings().dependencies();
    WishlistBindings().dependencies();
    ProfileBindings().dependencies();
  }
}
