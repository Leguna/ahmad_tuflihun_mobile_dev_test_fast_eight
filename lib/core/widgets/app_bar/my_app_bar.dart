import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/widgets/app_bar/app_bar_cubit.dart';
import 'package:flutter/material.dart';

import '../../index.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.subTitle = '',
    this.isTitleCenter = false,
    this.leading,
    this.leadingWidth = 0.0,
    this.titlePadding = const EdgeInsets.only(),
    this.actions,
    this.isShowLeading = false,
    this.heightAdded = 0.0,
    this.autoImplyLeading = true,
    this.size,
    this.backgroundColor = AppColors.primaryColorDark,
    this.titleColor = Colors.white,
    this.leadingColor = Colors.white,
    this.titleStyle,
    this.titleWidget,
    required this.title,
  });

  final Widget? titleWidget;
  final TextStyle? titleStyle;
  final Color titleColor;
  final Color leadingColor;
  final Color backgroundColor;
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
          child: Column(
            children: [
              AppBar(
                surfaceTintColor: AppColors.primaryColorDark,
                foregroundColor: AppColors.primaryColorDark,
                backgroundColor: backgroundColor,
                leadingWidth: isShowLeading ? leadingWidth : 20.0,
                automaticallyImplyLeading: autoImplyLeading,
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
                      titleWidget ??
                          Text(
                            title,
                            softWrap: true,
                            style: titleStyle ??
                                AppTextStyles.appBarTitle.copyWith(
                                  color: titleColor,
                                ),
                            textAlign: isTitleCenter
                                ? TextAlign.center
                                : TextAlign.start,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isShowLeading) ...[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20.0,
                          color: leadingColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ] else ...[
                      const SizedBox(width: 0.0),
                    ],
                  ],
                ),
                actions: actions,
              ),
            ],
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
