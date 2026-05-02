import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/features/home/controller/home_controller.dart';
import 'package:e_shop/features/home/widgets/home_product_card.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class HomePopularItems extends GetWidget<HomeController> {
  const HomePopularItems({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🔹 Title
        CustomTextPrimary(
          text: "Popular Categories",
          fontSize: 18.sp,
        ),

        SizedBox(height: 8.h),

        CustomTextSecondary(
          text: "Find your favorite products",
        ),

        SizedBox(height: 16.h),

        /// 🔹 Grid
        Obx(
          () => GridView.builder(
            itemCount: controller.products.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.w,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) {
              final product = controller.products[index];
              return HomeProductCard(product: product);
            },
          ),
        ),
      ],
    );
  }
}
