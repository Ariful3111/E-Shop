import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/features/bottom_navigation_bar/controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    BottomNavigationController bottomNavigationController = Get.find();
    return Scaffold(
      body: Obx(
        () => bottomNavigationController
            .pageList[bottomNavigationController.selectedIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          onDestinationSelected: (value) {
            bottomNavigationController.selectedIndex.value = value;
          },
          elevation: 0,
          backgroundColor: isDark ? AppColors.dark : AppColors.light,
          selectedIndex: bottomNavigationController.selectedIndex.value,
          indicatorColor: isDark
              ? AppColors.light.withValues(alpha: 0.1)
              : AppColors.dark.withValues(alpha: 0.1),
          destinations: [
            navItem(icon: IconsPath.home, label: 'Home'),
            navItem(icon: IconsPath.store, label: 'Store'),
            navItem(icon: IconsPath.wishlist, label: 'Wishlist'),
            navItem(icon: IconsPath.profile, label: 'Profile',color: Colors.black),
          ],
        ),
      ),
    );
  }

  Widget navItem({required String icon, required String label,Color ? color }) {
    return NavigationDestination(
      icon: Image.asset(icon, height: 24.h, width: 24.w,color: color,),
      label: label,
    );
  }
}
