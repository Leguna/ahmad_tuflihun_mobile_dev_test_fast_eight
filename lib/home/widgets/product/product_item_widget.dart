import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/models/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/string_utils.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.product});

  final ProductMdl product;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: MyShimmer(),
                  ),
                  imageUrl: product.image ?? '',
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                product.name ?? '',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    formatMoney(product.price ?? 0),
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: (product.discount ?? 0) > 0
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  if ((product.discount ?? 0) > 0)
                    Text(
                      '${((product.discount ?? 0) * 100).toStringAsFixed(0)}% OFF',
                      style: AppTextStyles.price.copyWith(
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
              if ((product.discount ?? 0) > 0)
                Text(
                  formatMoney(((product.price ?? 0) -
                      (product.price ?? 0) * (product.discount ?? 0))),
                  style: AppTextStyles.price,
                )
            ],
          ),
          InkWell(
            splashColor: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16.0),
            onTap: () {
            },
            child: Container(
              width: double.infinity,
              height:240,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
      
        ],
      ),
    );
  }
}
