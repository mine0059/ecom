import 'package:flutter/material.dart';

import '../res/colors.dart';

extension TextStyleExt on TextStyle {
  TextStyle get orange => copyWith(color: Colours.lightThemeSecondaryColor);
}
