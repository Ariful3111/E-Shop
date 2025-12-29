import 'package:e_shop/core/constants/animations_path.dart';
import 'package:e_shop/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  RxInt currentPage = 0.obs;
  PageController pageController = PageController();
  final List onboardingList = [
    {
      'image': AnimationsPath.onboarding1Animation,
      'title': 'Welcome to UP Store',
      'subTitle':
          'Your one-stop destination for effortless and enjoyable shopping',
    },
    {
      'image': AnimationsPath.onboarding2Animation,
      'title': 'Shop Everything You Love!',
      'subTitle':
          'Discover top-quality products at the best prices with a seamless shopping experience',
    },
    {
      'image': AnimationsPath.onboarding3Animation,
      'title': 'Fast & Reliable Delivery!',
      'subTitle':
          'Get your favorite items delivered to your doorstep, anytime, anywhere',
    },
  ];
  void updatePage(index) {
    currentPage.value = index;
  }

  void onClickIndicator(index) {
    currentPage.value = index;
    pageController.animateToPage(
      currentPage.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void nextPage() {
    if (!pageController.hasClients) return;
if (currentPage.value == 2) {
      Get.offAllNamed(AppRoutes.loginView);
    }
    if (currentPage.value < onboardingList.length - 1) {
      currentPage.value++;
      pageController.animateToPage(
        currentPage.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }


  void skipPage() {
    currentPage.value = 2;
    pageController.animateToPage(
      currentPage.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // @override
  // void onClose() {
  //   pageController.dispose();
  //   super.onClose();
  // }

  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }
}
