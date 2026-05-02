import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/features/home/controller/home_controller.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeBanner extends GetWidget<HomeController> {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 160.h,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              controller.onPageChanged(index);
            },
          ),
          items: controller.images.map((image) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.grey,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 10.h),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              controller.images.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                width: controller.currentIndex.value == index ? 18.w : 6.w,
                height: 6.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: controller.currentIndex.value == index
                      ? AppColors.primary
                      : (isDark
                          ? AppColors.darkGrey
                          : AppColors.grey),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        CustomTextPrimary(
          text: "Search Products",
          fontSize: 16.sp,
        ),
      ],
    );
  }
}
