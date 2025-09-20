import 'package:ecom/core/common/widgets/products/text/brand_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors.dart';
import '../../../constants/enums.dart';
import '../../../constants/sizes.dart';

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          // child: Text('Nike',
          //     overflow: TextOverflow.ellipsis,
          //     maxLines: 1,
          //     style: Theme.of(context).textTheme.labelMedium),
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        const Icon(Iconsax.verify5,
            color: TColors.primary, size: TSizes.iconXs),
      ],
    );
  }
}
