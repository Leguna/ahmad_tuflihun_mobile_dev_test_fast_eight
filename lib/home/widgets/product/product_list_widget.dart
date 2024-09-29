import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/models/index.dart';
import 'package:flutter/material.dart';

import 'product_item_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key, required this.products});

  final List<ProductMdl> products;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        childAspectRatio: 0.7,
        mainAxisSpacing: 12.0,
      ),
      children: products
          .map(
            (product) => Container(
              alignment: Alignment.center,
              child: ProductItemWidget(product: product),
            ),
          )
          .toList(),
    );
  }
}
