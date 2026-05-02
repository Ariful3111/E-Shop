import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/shared/widgets/custom_appbar.dart';
import 'package:e_shop/shared/widgets/custom_appbar_action.dart';
import 'package:e_shop/shared/widgets/custom_header.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(
                  actions: [CustomAppbarAction()],
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextSecondary(
                        text: 'Good Morning',
                        color: AppColors.grey,
                      ),
                      CustomTextPrimary(
                        text: 'Ariful Islam',
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.h),
                Padding(
                  padding:  EdgeInsets.all(20.sp),
                  child: CustomTextPrimary(
                    text: 'Popular Categories',
                    color: AppColors.white,
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),
          );
  }
}