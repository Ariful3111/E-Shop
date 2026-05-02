import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/features/home/controller/home_controller.dart';
import 'package:e_shop/features/home/widgets/home_banner.dart';
import 'package:e_shop/features/home/widgets/home_header.dart';
import 'package:e_shop/features/home/widgets/home_popular_items.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_style.dart';
import 'package:e_shop/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return CustomScaffold(
      child: ListView(
        children: [
          Stack(
            children: [
              SizedBox(height: AppSize.homePrimaryHeaderHeight + 50),
              HomeHeader(),
              Positioned(
                bottom: 0,
                right: 36.w,
                left: 36.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.black : AppColors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: CustomStyle.searchBarShadow,
                  ),
                  child: CustomTextFormField(
                    controller: homeController.searchController,
                    labelText: 'Search in store',
                    fillColor: isDark ? AppColors.black : AppColors.white,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Image.asset(
                        IconsPath.search,
                        color: AppColors.darkerGrey,
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          HomeBanner(),
          SizedBox(height: 24.h),
          Padding(padding: EdgeInsets.all(24.r), child: HomePopularItems()),
        ],
      ),
    );
  }
}
