import 'package:e_shop/core/data/local/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;
  final ThemeService themeService =Get.find();
  @override
  void onInit() {
    themeMode.value = themeService.getThemeMode();
    super.onInit();
  }

  void changeTheme(ThemeMode mode) {
    themeMode.value = mode;
    themeService.saveThemeMode(mode);
    Get.changeThemeMode(mode);
  }

  // ThemeMode get currentTheme =>
  //     isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
}
