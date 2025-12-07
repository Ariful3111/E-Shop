import 'package:e_shop/core/constants/icons_path.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:e_shop/shared/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(

      //setup screenutil 
      padding: EdgeInsets.symmetric(horizontal: AppSize.defaultSpace),
      child: Stack(
      children: [
        PageView(
          children: [
            Lottie.asset(IconsPath.onboarding1Animation),
            Lottie.asset(IconsPath.onboarding2Animation),
            Lottie.asset(IconsPath.onboarding3Animation),
          ],
        ),
      ],
    ),);
  }
}