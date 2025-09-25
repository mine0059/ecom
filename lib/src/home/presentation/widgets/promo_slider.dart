import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/core/common/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/constants/sizes.dart';
import '../../../../core/common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../core/common/widgets/images/rounded_image.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  int _slideIndex = 0;
  void _onSlideChange(int index) {
    setState(() {
      _slideIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => _onSlideChange(index),
          ),
          items:
              widget.banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < widget.banners.length; i++)
              CircularContainer(
                width: _slideIndex == i ? 20 : 12,
                height: 4,
                margin: const EdgeInsets.only(right: 10),
                backgroundColor:
                    _slideIndex == i ? TColors.primary : TColors.grey,
              )
          ],
        ),
      ],
    );
  }
}
