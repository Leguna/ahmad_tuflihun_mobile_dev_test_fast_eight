import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/widgets/step.dart';
import 'package:flutter/material.dart';

class StepperHorizontal extends StatelessWidget {
  const StepperHorizontal({
    super.key,
    this.currentStep = 0,
    required this.stepTitles,
    this.width = 130,
    this.height = 90,
    this.onTap,
  });

  final Function(int index)? onTap;
  final int currentStep;
  final List<String> stepTitles;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          stepTitles.length,
          (index) => MyStep(
            height: height,
            onTap: () {
              if (onTap != null) {
                onTap!(index);
              }
            },
            number: (index + 1).toString(),
            title: stepTitles[index],
            width: width,
            isActive: index <= currentStep,
            rightNode: index != stepTitles.length - 1,
            leftNode: index != 0,
          ),
        ),
      ],
    );
  }
}
