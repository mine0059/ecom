import 'package:ecom/core/common/constants/image_strings.dart';
import 'package:ecom/core/common/constants/text_strings.dart';
import 'package:ecom/src/auth/presentation/widgets/reset_password_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/common/constants/sizes.dart';
import '../../../../core/common/widgets/loaders/app_bar_bottom.dart';
import '../../../../core/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});
  final String email;

  static const path = '/reset-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TTexts.resetPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.resetPasswordSubTitle,
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(
                  height: TSizes.spaceBtwSections * 2,
                ),
                ResetPasswordForm(email: email),
              ],
            ),
          ),
        ));
  }
}


// import 'package:ecom/src/auth/presentation/widgets/reset_password_form.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// import '../../../../core/common/widgets/loaders/app_bar_bottom.dart';

// class ResetPasswordScreen extends StatelessWidget {
//   const ResetPasswordScreen({super.key, required this.email});

//   static const path = '/reset-password';

//   final String email;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reset Password'),
//         bottom: const AppBarBottom(),
//         titleSpacing: 0,
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
//         children: [
//           Text(
//             'Change Password',
//             style: Theme.of(context).textTheme.headlineLarge,
//           ),
//           Text(
//             'Pick a new secure password',
//             style: Theme.of(context).textTheme.titleMedium,
//           ),
//           const Gap(40),
//           ResetPasswordForm(email: email),
//         ],
//       ),
//     );
//   }
// }
