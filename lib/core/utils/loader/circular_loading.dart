
import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:flutter/material.dart';
class CircularLoading extends StatelessWidget {
  const CircularLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.lg),
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle
      ),
      child: CircularProgressIndicator(color: AppColors.white,)
    );
  }
}