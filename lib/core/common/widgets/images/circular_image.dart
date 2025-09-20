import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_functions.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.fit,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark ? TColors.black : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        // NB:: we will replace the NetworkImage with cache image
        // cause we do not want the user to reload data again and again from the server.
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
        color: overlayColor,
      ),
    );
  }
}
