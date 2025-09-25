import 'package:ecom/core/common/widgets/layouts/grid_layout.dart';
import 'package:ecom/core/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecom/core/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/constants/image_strings.dart';
import '../../../../core/common/constants/sizes.dart';
import '../../../../core/common/widgets/brands/brand_showcase.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const BrandShowcase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// -- Products
              SectionHeading(text: 'You might like', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
