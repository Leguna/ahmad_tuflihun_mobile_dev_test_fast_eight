import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    super.key,
    required this.title,
    required this.icon,
    this.tag = '',
    this.textColor = Colors.black,
    this.onTap,
  });

  final Function()? onTap;
  final String title;
  final Widget icon;
  final String tag;
  final Color textColor;
  final bool showRipple = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {
          onTap?.call();
        },
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: 84.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: icon,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    title,
                    style: AppTextStyles.small.copyWith(
                      color: textColor,
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            if (tag.isNotEmpty)
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
