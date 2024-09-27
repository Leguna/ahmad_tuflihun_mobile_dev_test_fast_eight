import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'item_menu.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, this.items = const {}, this.colors = const []});

  final List<Color> colors;

  final Map<String, String> items;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      runAlignment: WrapAlignment.center,
      direction: Axis.horizontal,
      children: items.entries
          .map((e) => ItemMenu(
              title: e.key,
              icon: SvgPicture.asset(
                e.value,
                height: 32.0,
                width: 32.0,
                colorFilter: ColorFilter.mode(
                  colors[items.keys.toList().indexOf(e.key)],
                  BlendMode.srcIn,
                ),
              )))
          .toList(),
    );
  }
}
