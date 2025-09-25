import 'package:flutter/material.dart';

import '../../../../core/common/constants/colors.dart';
import '../../../../core/common/constants/text_strings.dart';
import '../../../../core/common/widgets/appbar/appbar.dart';
import '../../../../core/common/widgets/products_cart/card_menu_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: TColors.white,
                ),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          iconColor: TColors.white,
          onPressed: () {},
        )
      ],
    );
  }
}
