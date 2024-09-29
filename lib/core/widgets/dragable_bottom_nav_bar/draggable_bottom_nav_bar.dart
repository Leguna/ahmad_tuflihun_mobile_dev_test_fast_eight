import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/widgets/dragable_bottom_nav_bar/bloc/draggable_bottom_nav_cubit.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/widgets/dragable_bottom_nav_bar/widgets/draggable_bottom_nav_bar_content.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

class DraggableBottomNavBar extends StatelessWidget {
  const DraggableBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    const minChildSize = 0.14;
    const maxChildSize = 0.45;
    final DraggableScrollableController controller =
        DraggableScrollableController();
    controller.addListener(() {
      final size = controller.size;
      context.read<DraggableBottomNavCubit>().setSize(size);
      if (controller.size == maxChildSize) {
        context.read<DraggableBottomNavCubit>().expand();
      } else if (controller.size == minChildSize) {
        context.read<DraggableBottomNavCubit>().collapse();
      }
    });
    return Stack(
      children: [
        // Black
        BlocBuilder<DraggableBottomNavCubit, DraggableBottomNavState>(
          builder: (context, state) {
            return IgnorePointer(
              ignoring: context
                  .select((DraggableBottomNavCubit cubit) => !cubit.isExpanded),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: context.select(
                  (DraggableBottomNavCubit cubit) =>
                      cubit.isExpanded ? 0.5 : 0.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    context.read<DraggableBottomNavCubit>().collapse();
                  },
                  child: Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            );
          },
        ),
        DraggableScrollableSheet(
          controller: controller,
          initialChildSize: minChildSize,
          minChildSize: minChildSize,
          maxChildSize: maxChildSize,
          snap: true,
          builder: (BuildContext context, ScrollController scrollController) {
            return Material(
              color: Colors.transparent,
              child: BlocConsumer<DraggableBottomNavCubit,
                  DraggableBottomNavState>(
                listener: (context, state) {
                  state.maybeWhen(
                    expanded: () {
                      controller.animateTo(
                        maxChildSize,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    },
                    collapsed: () {
                      controller.animateTo(
                        minChildSize,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                      );
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  final c = context.read<DraggableBottomNavCubit>();
                  return Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 24.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      DraggableBottomNavBarContent(
                          scrollController: scrollController),
                      Positioned(
                        top: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 24.0,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        child: GestureDetector(
                          onTap: () {
                            c.toggle();
                          },
                          child: Icon(
                            !c.isExpanded
                                ? Icons.keyboard_arrow_up
                                :Icons.keyboard_arrow_down,
                            size: 40.0,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
