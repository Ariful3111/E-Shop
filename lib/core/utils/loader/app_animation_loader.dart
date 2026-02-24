import 'package:e_shop/core/constants/animations_path.dart';
import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/core/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class AppAnimationLoader extends StatelessWidget {
  final String text;
  final String animation;
  final bool showActionButton;
  final String? actionText;
  final VoidCallback? onActionPressed;
 
  const AppAnimationLoader({
    super.key,
    required this.text,
    this.animation = AnimationsPath.loadingAnimation,
    this.showActionButton = false,
    this.actionText,
    this.onActionPressed
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Animation
          Lottie.asset(animation, width: Get.width * 0.8),
          const SizedBox(height: AppSize.defaultSpace),

          /// Title
          Text(text, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
          const SizedBox(height: AppSize.defaultSpace),
          
          showActionButton ?
              SizedBox(
                width : 250,
                child: OutlinedButton(
                  onPressed: onActionPressed,
                    style: OutlinedButton.styleFrom(backgroundColor: AppColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.light),
                    ),
                )
              ) : SizedBox()
        ],
      ),
    );
  }
}