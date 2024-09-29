import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/widgets/not_found_page.dart';
import 'package:flutter/material.dart';

import '../core/widgets/dragable_bottom_nav_bar/bloc/draggable_bottom_nav_cubit.dart';
import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Stack(
      children: [
        BlocConsumer<DraggableBottomNavCubit, DraggableBottomNavState>(
          listener: (context, state) {
            state.maybeWhen(
              selected: (index) {
                pageController.jumpToPage(index);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return PageView(
              controller: pageController,
              children: const [
                HomePage(),
                NotFoundPage(text: 'search'),
                NotFoundPage(text: 'keranjang'),
                NotFoundPage(text: 'settings'),
                NotFoundPage(text: 'voucher'),
                NotFoundPage(text: 'alamat'),
                NotFoundPage(text: 'daftar teman'),
              ],
              onPageChanged: (index) {
                context.read<DraggableBottomNavCubit>().select(index);
              },
            );
          },
        ),
        // TODO: Add DraggableBottomNavBar
        // const DraggableBottomNavBar(),
      ],
    );
  }
}
