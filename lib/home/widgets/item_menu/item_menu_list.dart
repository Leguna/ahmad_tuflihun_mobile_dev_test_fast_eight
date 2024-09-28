import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/icon_menu/icon_menu_mdl.dart';
import 'item_menu.dart';

class ItemMenuList extends StatelessWidget {
  const ItemMenuList({
    super.key,
    this.items = const [],
    this.colors = const [],
    this.size = 28.0,
    this.selectedIndex = 0,
    this.textColored = false,
    this.onTap,
  });


  final Function(int)? onTap;
  final double size;
  final List<Color> colors;
  final List<IconMenuMdl> items;
  final int selectedIndex;
  final bool textColored;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      runAlignment: WrapAlignment.center,
      direction: Axis.horizontal,
      children: items
          .map((e) => ItemMenu(
        onTap: () {
          onTap?.call(items.indexOf(e));
        },
              title: e.title ?? '',
              textColor: textColored
                  ? items.indexOf(e) == selectedIndex
                      ? AppColors.primaryColor
                      : Colors.black
                  : Colors.black,
              tag: e.badge ?? '',
              icon: SvgPicture.asset(
                e.icon ?? '',
                height: size,
                width: size,
                colorFilter: colors.isNotEmpty
                    ? ColorFilter.mode(
                        colors[items.indexOf(e)], BlendMode.srcIn)
                    : ColorFilter.mode(
                        items.indexOf(e) == selectedIndex
                            ? AppColors.primaryColor
                            : Colors.black,
                        BlendMode.srcIn,
                      ),
              )))
          .toList(),
    );
  }
}
