import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/utils/helper/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SnackLoader {
  static dynamic customToast({
    required String message,
    required BuildContext context,
  }) {
    SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      content: Container(
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppHelper.isDarkMode(Get.context!)
              ? AppColors.darkerGrey.withValues(alpha: 0.9)
              : AppColors.grey.withValues(alpha: 0.9),
        ),
        child: Center(
          child: Text(
            message,
            style: Theme.of(Get.context!).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }

  /// Warning Orange Snack bar
  static dynamic warningSnackBar({required String title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: AppColors.white),
    );
  }

  /// Success Green Snack bar
  static dynamic successSnackBar({required String title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColors.white,
      backgroundColor: AppColors.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: AppColors.white),
    );
  }

  /// Error Red Snack bar
  static dynamic errorSnackBar({required String title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2, color: AppColors.white),
    );
  }
}
