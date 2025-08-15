import 'package:ecom/core/utils/core_utils.dart';
import 'package:flutter/material.dart';

abstract class Colours {
  // lightThemePrimaryTint color swatch
  static const Color lightThemePrimaryTint = Color(0xff9e9cdc);

  // lightThemePrimaryColor color swatch
  static const Color lightThemePrimaryColor = Color(0xff524eb7);

  // lightThemeSecondaryColor color swatch
  static const Color lightThemeSecondaryColor = Color(0xfff76631);

  // lightThemePrimaryTextColor color swatch
  static const Color lightThemePrimaryTextColor = Color(0xff282344);

  // lightThemeSecondaryTextColor color swatch
  static const Color lightThemeSecondaryTextColor = Color(0xff9491a1);

  // lightThemePinkColor color swatch
  static const Color lightThemePinkColor = Color(0xfff08e98);

  // lightThemeWhiteColor color swatch
  static const Color lightThemeWhiteColor = Color(0xffffffff);

  // lightThemeTintStockColor color swatch
  static const Color lightThemeTintStockColor = Color(0xfff6f6f9);

  // lightThemeYellowColor color swatch
  static const Color lightThemeYellowColor = Color(0xfffec613);

  // lightThemeStockColor color swatch
  static const Color lightThemeStockColor = Color(0xffe4e4e9);

  // darkThemeDarkSharpColor color swatch
  static const Color darkThemeDarkSharpColor = Color(0xff191821);

  // darkThemeBGDark color swatch
  static const Color darkThemeBGDark = Color(0xff0e0d11);

  // darkThemeDarkNavBarColor color swatch
  static const Color darkThemeDarkNavBarColor = Color(0xff201f27);

  static Color classicAdaptiveTextColor(BuildContext context) =>
      CoreUtils.adaptiveColor(context,
          lightModeColor: lightThemePrimaryTextColor,
          darkModeColor: lightThemeWhiteColor);
}
