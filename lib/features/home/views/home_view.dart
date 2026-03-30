import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/features/home/controller/home_controller.dart';
import 'package:e_shop/shared/widgets/custom_header.dart';
import 'package:e_shop/shared/widgets/custom_appbar.dart';
import 'package:e_shop/shared/widgets/custom_appbar_action.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_search_bar.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return CustomScaffold(
      child: Stack(
        children: [
          SizedBox(height: AppSize.homePrimaryHeaderHeight + 50),
          CustomHeader(
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
                      SizedBox(height: 37.h),
                    ],
                  ),
                ),
                SizedBox(height: 37.h,),
                CustomTextPrimary(text: 'Popular Categories', color: AppColors.white),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 36.w,
            left: 36.w,
            child: SizedBox(
              height: 46.h,
              width: 318.w,
              child: CustomSearchBar(
                controller: homeController.searchController,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
