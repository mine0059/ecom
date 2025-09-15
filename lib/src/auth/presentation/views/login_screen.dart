import 'package:ecom/core/common/styles/spacing_styles.dart';
import 'package:ecom/src/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/constants/image_strings.dart';
import '../../../../core/common/constants/sizes.dart';
import '../../../../core/common/constants/text_strings.dart';
import '../../../../core/utils/helpers/helper_functions.dart';
import '../widgets/form_divider.dart';
import '../widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = '/login';

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              // Form
              const LoginForm(),

              /// Divider
              const Formdivider(
                dividerText: TTexts.orSignInWith,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:ecom/core/common/widgets/loaders/app_bar_bottom.dart';
// import 'package:ecom/src/auth/presentation/views/register_screen.dart';
// import 'package:ecom/src/auth/presentation/widgets/login_form.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:go_router/go_router.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   static const path = '/login';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign in'),
//         bottom: const AppBarBottom(),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               shrinkWrap: true,
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
//               children: [
//                 Text(
//                   'Hello!!',
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 ),
//                 const Gap(10),
//                 Text(
//                   'Sign in with your account details',
//                   style: Theme.of(context).textTheme.titleMedium,
//                 ),
//                 const Gap(40),
//                 // const LoginForm(),
//               ],
//             ),
//           ),
//           const Gap(8),
//           RichText(
//               text: TextSpan(
//                   text: "Don't have an account?",
//                   style: Theme.of(context).textTheme.bodyMedium,
//                   children: [
//                 TextSpan(
//                   text: " Create Account",
//                   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                         color: Theme.of(context).colorScheme.primary,
//                         fontWeight: FontWeight.bold,
//                       ),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () => context.go(RegisterScreen.path),
//                 )
//               ])),
//           const Gap(16),
//         ],
//       ),
//     );
//   }
// }
