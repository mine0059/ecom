import 'package:flutter/material.dart';

import '../../../core/common/constants/image_strings.dart';

class OnBoardingInfoSection extends StatelessWidget {
  const OnBoardingInfoSection.first({super.key}) : first = true;
  const OnBoardingInfoSection.second({super.key}) : first = false;

  final bool first;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(first
            ? TImages.productsIllustration
            : TImages.productsSaleIllustration),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            switch (first) {
              true => Text.rich(
                  textAlign: TextAlign.left,
                  TextSpan(
                    text: '${DateTime.now().year}\n',
                    style: Theme.of(context).textTheme.headlineLarge,
                    children: const [
                      TextSpan(
                        text: 'Winder Sales is live now.',
                      ),
                    ],
                  ),
                ),
              _ => Text.rich(
                  textAlign: TextAlign.left,
                  TextSpan(
                    text: 'Flash Sale\n',
                    style: Theme.of(context).textTheme.headlineLarge,
                    children: [
                      TextSpan(
                        text: "Men's ",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextSpan(
                        text: 'Shirt & watches',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
            }
          ],
        )
      ],
    );
  }
}
