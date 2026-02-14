import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppbarAction extends StatelessWidget {
  const CustomAppbarAction({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.shopping_bag),
          color: isDark ? AppColors.dark : AppColors.light,
        ),
        Positioned(
          right: 6.0,
          child: Container(
            padding: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              color: isDark ? AppColors.dark : AppColors.light,
              shape: BoxShape.circle,
            ),
            child: Center(child: CustomGrayText(text: '2')),
          ),
        ),
      ],
    );
  }
}
