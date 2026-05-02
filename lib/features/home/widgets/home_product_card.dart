import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/features/home/models/product_model.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeProductCard extends StatelessWidget {
  final ProductModel product;

  const HomeProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: isDark ? AppColors.dark : AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.borderPrimary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 Image + Badge
          Stack(
            children: [
              Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: NetworkImage(product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /// 🔹 Discount Badge
              Positioned(
                top: 6.h,
                left: 6.w,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: AppColors.yellow.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: CustomTextSecondary(
                    text: product.discount,
                    fontSize: 10.sp,
                  ),
                ),
              ),

              /// 🔹 Wishlist Icon
              Positioned(
                top: 6.h,
                right: 6.w,
                child: Container(
                  height: 24.h,
                  width: 24.w,
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 14.sp,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8.h),

          /// 🔹 Title
          CustomTextPrimary(
            text: product.title,
            fontSize: 12.sp,
          ),

          SizedBox(height: 4.h),

          /// 🔹 Brand
          CustomTextSecondary(
            text: product.brand,
            fontSize: 12.sp,
            color: AppColors.darkGrey,
          ),
        ],
      ),
    );
  }
}
