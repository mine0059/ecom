import 'package:ecom/src/auth/presentation/widgets/forgot_password_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/constants/sizes.dart';
import '../../../../core/common/constants/text_strings.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  static const path = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(
              height: TSizes.spaceBtwSections * 2,
            ),
            const ForgotPasswordForm(),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// import '../../../../core/common/widgets/loaders/app_bar_bottom.dart';
// import '../widgets/forgot_password_form.dart';

// class ForgotPasswordScreen extends StatelessWidget {
//   const ForgotPasswordScreen({super.key});

//   static const path = '/forgot-password';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Fogot Password'),
//         bottom: const AppBarBottom(),
//         titleSpacing: 0,
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
//         children: [
//           Text(
//             'Confirm Email',
//             style: Theme.of(context).textTheme.headlineLarge,
//           ),
//           const Gap(10),
//           Text(
//             'Enter the email associated with your account',
//             style: Theme.of(context).textTheme.titleMedium,
//           ),
//           const Gap(40),
//           const ForgotPasswordForm(),
//         ],
//       ),
//     );
//   }
// }
