import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/models/index.dart';
import 'package:flutter/widgets.dart';

import 'product_item_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key, required this.products});

  final List<ProductMdl> products;

  @override
  Widget build(BuildContext context) {
    // Grid 2 Column
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        childAspectRatio: 0.8,
        mainAxisSpacing: 12.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItemWidget(product: products[index]);
      },
    );
  }
}
