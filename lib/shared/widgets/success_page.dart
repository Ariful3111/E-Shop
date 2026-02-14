import 'package:e_shop/core/constants/images_path.dart';
import 'package:e_shop/shared/widgets/custom_gray_text.dart';
import 'package:e_shop/shared/widgets/custom_primary_button.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:e_shop/shared/widgets/custom_text_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  const SuccessPage({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      padding: EdgeInsets.all(36.r),
      child: Column(
        children: [
          Image.asset(
            ImagesPath.success,
            width: MediaQuery.widthOf(context),
            height: 314.h,
          ),
          CustomTextPrimary(text: title, textAlign: TextAlign.center),
          SizedBox(height: 8.h),
          CustomGrayText(
            text: subTitle,
            textAlign: TextAlign.center,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 48.h),
          CustomPrimaryButton(onTap: onTap, text: 'Continue'),
        ],
      ),
    );
  }
}
