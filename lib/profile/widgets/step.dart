import 'package:flutter/material.dart';

import '../../core/index.dart';

class MyStep extends StatelessWidget {
  const MyStep({
    super.key,
    required this.number,
    this.title = '',
    this.isActive = false,
    this.rightNode = true,
    this.leftNode = false,
    this.width = 50,
    this.height = 100,
    this.onTap,
  });

  final Function()? onTap;
  final double width;
  final String number;
  final String title;
  final bool isActive;
  final bool rightNode;
  final bool leftNode;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: width,
          height: height,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: width,
            ),
            Positioned(
              right: rightNode ? 0 : width / 2,
              left: leftNode ? 0 : width / 2,
              child: Container(
                width: width / 2,
                height: 2,
                color: isActive
                    ? AppColors.primaryColorBackground
                    : AppColors.primaryColorLight,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(32.0),
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: isActive
                      ? AppColors.primaryColorBackground
                      : AppColors.primaryColorLight,
                  child: Text(
                    number,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: 80,
            height: 30,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isActive
                    ? AppColors.primaryColorBackground
                    : AppColors.primaryColorLight,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
