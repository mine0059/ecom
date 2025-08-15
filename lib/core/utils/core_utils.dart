import 'package:ecom/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

abstract class CoreUtils {
  const CoreUtils();

  static Color adaptiveColor(BuildContext context,
      {required Color lightModeColor, required Color darkModeColor}) {
    return context.isDarkMood ? darkModeColor : lightModeColor;
  }
}
