import 'package:e_shop/core/constants/colors.dart';
import 'package:e_shop/shared/widgets/custom_circular_container.dart';
import 'package:e_shop/shared/widgets/custom_clip_path.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final Widget? child;
  final double? height;
  const CustomHeader({super.key, this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        height:height?? MediaQuery.heightOf(context) * 0.4,
        width: MediaQuery.widthOf(context),
        decoration: BoxDecoration(color: AppColors.primary),
        child: Stack(
          children: [
            Positioned(
              top: -200,
              right: -300,
              child: CustomCircularContainer(),
            ),
            Positioned(top: 50, right: -380, child: CustomCircularContainer()),
            ?child,
          ],
        ),
      ),
    );
  }
}
