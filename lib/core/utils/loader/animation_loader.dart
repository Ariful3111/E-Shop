import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/utils/helper/app_helper.dart';
import 'package:e_shop/core/utils/loader/app_animation_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationLoader {
  static void openLoadingDialog(String text) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: AppHelper.isDarkMode(Get.context!) ? AppColors.dark : AppColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 250),
                  AppAnimationLoader(text: text)
                ],
              ),
            )));
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}