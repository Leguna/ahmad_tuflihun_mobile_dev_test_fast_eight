import 'package:flutter/widgets.dart';

import '../core/index.dart';
import 'configs.dart';
import 'widgets/item_menu/item_menu_list.dart';

class ProdukKeuangan extends StatelessWidget {
  const ProdukKeuangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.produkKeuangan,
              style: AppTextStyles.titleHome,
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        ItemMenuList(items: menus, colors: colors),
      ],
    );
  }
}
