import 'package:e_shop/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomStyle {
 static List<BoxShadow> searchBarShadow = [
    BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: AppColors.black.withValues(alpha: 0.10),
          ),
  ];
}
