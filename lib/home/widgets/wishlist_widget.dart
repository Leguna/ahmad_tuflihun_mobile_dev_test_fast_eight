import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:flutter/material.dart';

import '../bloc/home_cubit.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  Strings.wishlist,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8.0),
                CircleAvatar(
                  minRadius: 10.0,
                  backgroundColor: Colors.amber,
                  child: Text(
                    context.read<HomeCubit>().wishListCount.toString(),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
