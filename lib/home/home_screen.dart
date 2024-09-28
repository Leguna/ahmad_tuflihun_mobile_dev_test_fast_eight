import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/widgets/dragable_bottom_nav_bar/draggable_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../core/widgets/app_bar/app_bar_cubit.dart';
import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyScaffold(
          appBar: MyAppBar(
            title: context.read<AppBarCubit>().title,
            subTitle: context.read<AppBarCubit>().subTitle,
            actions: [
              Stack(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(32.0),
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 4,
                    child: CircleAvatar(
                      radius: 8.0,
                      backgroundColor: AppColors.red,
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.small.copyWith(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8.0),
              CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.grey[200],
                child: const Icon(
                  Icons.person,
                  size: 30.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 16.0),
            ],
          ),
          body: const Stack(
            children: [
              HomePage(),
            ],
          ),
        ),
        const DraggableBottomNavBar(),
      ],
    );
  }
}
