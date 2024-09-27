import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/widgets/app_bar/app_bar_cubit.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title = '',
    this.subTitle = '',
    this.isTitleCenter = false,
    this.leading,
    this.leadingWidth = 0.0,
    this.titlePadding = const EdgeInsets.only(left: 24.0),
    this.actions,
    this.isShowLeading = false,
    this.heightAdded = 0.0,
    this.autoImplyLeading = true,
    this.size,
  });

  final String subTitle;
  final EdgeInsets titlePadding;
  final bool autoImplyLeading;
  final bool isTitleCenter;
  final double? size;
  final String title;
  final Widget? leading;
  final double leadingWidth;
  final List<Widget>? actions;
  final bool isShowLeading;
  final double heightAdded;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarCubit, AppBarState>(
      builder: (context, state) {
        return SafeArea(
          child: AppBar(
            surfaceTintColor: AppColors.primaryColorDark,
            foregroundColor: AppColors.primaryColorDark,
            backgroundColor: AppColors.primaryColorDark,
            leadingWidth: isShowLeading ? 40.0 : leadingWidth,
            automaticallyImplyLeading: true,
            toolbarHeight: kToolbarHeight + heightAdded,
            titleSpacing: 0.0,
            centerTitle: isTitleCenter,
            title: Padding(
              padding: titlePadding,
              child: Column(
                crossAxisAlignment: isTitleCenter
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    softWrap: true,
                    style: AppTextStyles.appBarTitle,
                    textAlign:
                        isTitleCenter ? TextAlign.center : TextAlign.start,
                    overflow: TextOverflow.visible,
                  ),
                  if (subTitle.isNotEmpty) ...[
                    Text(
                      subTitle,
                      style: AppTextStyles.appBarSubTitle,
                    ),
                  ],
                ],
              ),
            ),
            leading: Row(
              children: [
                if (isShowLeading) ...[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ] else ...[
                  const SizedBox(width: 30.0),
                ],
              ],
            ),
            actions: actions,
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight + heightAdded,
      );
}
