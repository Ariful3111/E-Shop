import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/features/auth/controller/onboarding_controller.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController = Get.find();
    return CustomScaffold(
      padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSpace),
      child: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: onboardingController.updatePage,
            children: List.generate(
              onboardingController.onboardingList.length,
              (index) {
                final list = onboardingController.onboardingList[index];
                return Column(
                  children: [
                    Lottie.asset(list['image']),
                    CustomTextPrimary(text: list['title']),
                    CustomTextSecondary(
                      text: list['subTitle'],
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight * 4,
            left: MediaQuery.widthOf(context) / 3,
            right: MediaQuery.widthOf(context) / 3,
            child: SmoothPageIndicator(
              controller: onboardingController.pageController,
              onDotClicked: onboardingController.onClickIndicator,
              count: onboardingController.onboardingList.length,
              effect: ExpandingDotsEffect(dotHeight: 6.h),
            ),
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight,
            left: 0,
            right: 0,
            child: Obx(
              () => CustomPrimaryButton(
                onTap: onboardingController.nextPage,
                text: onboardingController.currentPage.value == 2
                    ? 'Get Started'
                    : 'Next',
              ),
            ),
          ),
          Obx(
            () => onboardingController.currentPage.value == 2
                ? SizedBox()
                : Positioned(
                    top: AppSize.appBarHeight,
                    right: 0,
                    child: InkWell(
                      onTap: onboardingController.skipPage,
                      child: CustomTextSecondary(
                        text: 'Skip',
                        color: AppColors.primary,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
