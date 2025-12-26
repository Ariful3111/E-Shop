import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin SocialAuthButton {
  Widget myButton({required String icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
          border: Border.all(width: 1.r, color: Color(0xFFBEBEBE)),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(icon, height: 24.h, width: 24.w),
        ),
      ),
    );
  }
}
