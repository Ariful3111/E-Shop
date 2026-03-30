import 'package:e_shop/core/constants/images_path.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/features/profile/widgets/user_info.dart';
import 'package:e_shop/shared/widgets/custom_header.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/images/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(height: AppSize.profilePrimaryHeaderHeight + 60.h),
              CustomHeader(height: AppSize.profilePrimaryHeaderHeight),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: CircularImage(
                    image: ImagesPath.user,
                    height: 120.h,
                    width: 120.w,
                    showBorder: true,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          UserInfo(),
        ],
      ),
    );
  }
}
