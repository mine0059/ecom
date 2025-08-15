import 'package:flutter/material.dart';

import '../../../../core/common/constants/image_strings.dart';
import '../../../../core/res/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.lightThemePrimaryColor,
      body: Center(
        child: Image.asset(TImages.lightAppLogo),
      ),
    );
  }
}
