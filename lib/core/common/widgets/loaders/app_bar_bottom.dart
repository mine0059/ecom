import 'package:ecom/core/utils/core_utils.dart';
import 'package:flutter/material.dart';

import '../../../res/colors.dart';

class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: ColoredBox(
        color: CoreUtils.adaptiveColor(context,
            lightModeColor: Colors.white,
            darkModeColor: Colours.darkThemeDarkSharpColor),
        child: const SizedBox(
          height: 1,
          width: double.maxFinite,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.zero;
}
