import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/features/auth/repo/auth_repo_controller.dart';
import 'package:e_shop/shared/widgets/custom_secondary_button.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:e_shop/shared/widgets/custom_text_secondary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserHeader(),
          SizedBox(height: 24.h),
          CustomTextPrimary(
          text: 'Account Settings',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.center,
        ),
          SizedBox(height: 16.h),
          _buildMenuItem(
            title: 'My Addresses',
            subtitle: 'Set shopping delivery addresses',
            onTap: () {},
          ),
          _buildMenuItem(
            title: 'My Cart',
            subtitle: 'Add, remove products and move to checkout',
            onTap: () {},
          ),
          _buildMenuItem(
            title: 'My Orders',
            subtitle: 'In-progress and Completed Orders',
            onTap: () {},
          ),
          SizedBox(height: 24.h),
          CustomSecondaryButton(text: 'Logout', onTap: () {
            Get.find<AuthRepoController>().logout();
          }),
        ],
      ),
    );
  }

  Widget _buildUserHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextPrimary(
              text: 'Arif',
              fontSize: 17.sp,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4.h),
            CustomTextSecondary(
              text: 'arif@gmail.com',
              fontSize: 12.sp,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Image.asset(IconsPath.edit, width: 24.w, height: 24.h),
        )
      ],
    );
  }

  

  Widget _buildMenuItem({
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextPrimary(
                    text: title,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 4.h),
                  CustomTextSecondary(
                    text: subtitle,
                    fontSize: 12.sp,
                    color: const Color(0xFF929292),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: AppColors.primaryText,
            ),
          ],
        ),
      ),
    );
  }
}
