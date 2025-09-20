import 'package:ecom/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.color,
    this.backgroundColor,
    this.onpressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: dark
            ? TColors.black.withOpacity(0.6)
            : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
