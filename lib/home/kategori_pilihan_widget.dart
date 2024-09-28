import 'package:flutter/material.dart';

import '../core/index.dart';
import 'configs.dart';
import 'widgets/item_menu/item_menu_list.dart';
import 'widgets/wishlist_widget.dart';

class KategoriPilihan extends StatelessWidget {
  const KategoriPilihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.kategoriPilihan,
              style: AppTextStyles.titleHome,
            ),
            const WishlistWidget(),
          ],
        ),
        const SizedBox(height: 8.0),
        ItemMenuList(items: categories, colors: colors),
      ],
    );
  }
}
