import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/shared/widgets/custom_style.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const CustomSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: AppSize.searchBarHeight,
      width: 318.w,
      padding: EdgeInsets.symmetric(horizontal: AppSize.md),
      decoration: BoxDecoration(
        color: isDark ? AppColors.dark : AppColors.light,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: CustomStyle.searchBarShadow,
      ),
      child: Row(
        children: [
          Image.asset(
            IconsPath.search,
            color: AppColors.darkerGrey,
            height: 20.h,
            width: 20.w,
          ),
          SizedBox(width: AppSize.spaceBtwItems),
          CustomTextSecondary(
            text: 'Search in Store',
            color: AppColors.darkerGrey,
          ),
        ],
      ),
    );
  }
}
