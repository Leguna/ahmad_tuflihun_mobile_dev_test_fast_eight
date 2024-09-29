import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/configs.dart';
import '../../../../home/widgets/item_menu/item_menu_list.dart';
import '../bloc/draggable_bottom_nav_cubit.dart';

class DraggableBottomNavBarContent extends StatelessWidget {
  const DraggableBottomNavBarContent(
      {super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ItemMenuList(
              size: 24,
              textColored: true,
              items: navBarIcons,
              selectedIndex:
                  context.read<DraggableBottomNavCubit>().selectedIndex,
              onTap: (index) {
                context.read<DraggableBottomNavCubit>().select(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
