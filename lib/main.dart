import 'package:ecom/core/common/theme/theme.dart';
import 'package:ecom/core/res/colors.dart';
import 'package:ecom/core/services/injection_container.dart';
import 'package:ecom/core/services/router.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp.router(
  //     title: 'Ecom',
  //     themeMode: ThemeMode.system,
  //     theme: TAppTheme.lightTheme,
  //     darkTheme: TAppTheme.darkTheme,
  //     routerConfig: router,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colours.lightThemePrimaryColor,
      ),
      // fontFamily:
      scaffoldBackgroundColor: Colours.lightThemeTintStockColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colours.lightThemeTintStockColor,
        foregroundColor: Colours.lightThemePrimaryTextColor,
      ),
      useMaterial3: true,
    );
    return MaterialApp.router(
      title: 'Ecom',
      routerConfig: router,
      themeMode: ThemeMode.system,
      theme: theme,
      darkTheme: theme.copyWith(
        scaffoldBackgroundColor: Colours.darkThemeBGDark,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colours.darkThemeBGDark,
            foregroundColor: Colours.lightThemeWhiteColor),
      ),
    );
  }
}
