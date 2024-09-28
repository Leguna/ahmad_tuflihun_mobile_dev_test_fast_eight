import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/icon_menu/icon_menu_mdl.dart';
import 'item_menu.dart';

class ItemMenuList extends StatelessWidget {
  const ItemMenuList({super.key, this.items = const [], this.colors = const []});

  final double size = 28.0;
  final List<Color> colors;

  final List<IconMenuMdl> items;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      runAlignment: WrapAlignment.center,
      direction: Axis.horizontal,
      children: items.map((e) => ItemMenu(
              title: e.title ?? '',
              tag: e.badge ?? '',
              icon: SvgPicture.asset(
                e.icon ?? '',
                height: size,
                width: size,
                colorFilter: ColorFilter.mode(
                  colors[items.indexOf(e)],
                  BlendMode.srcIn,
                ),
              )))
          .toList(),
    );
  }
}
