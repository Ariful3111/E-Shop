import 'package:e_shop/features/home/views/home_view.dart';
import 'package:e_shop/features/profile/views/profile_view.dart';
import 'package:e_shop/features/shop/views/store_view.dart';
import 'package:e_shop/features/wishlist/views/wishlist_view.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List pageList = [
    HomeView(),
    StoreView(),
    WishlistView(),
    ProfileView()
  ];
}
