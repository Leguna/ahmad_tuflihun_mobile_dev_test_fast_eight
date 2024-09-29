import 'package:flutter/material.dart';

import '../../core/index.dart';

class StepperNextButton extends StatelessWidget {
  const StepperNextButton({
    super.key,
    this.isLastStep = false,
    this.isFirstStep = false,
    this.height = 48,
    this.onPressed,
  });

  final Function(int)? onPressed;
  final bool isLastStep;
  final bool isFirstStep;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        if (!isFirstStep)
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                onPressed?.call(-1);
              },
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, height),
                foregroundColor: AppColors.primaryColorDark,
                side: const BorderSide(color: AppColors.primaryColorDark),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                surfaceTintColor: AppColors.primaryColorDark,
              ),
              child: const Text(Strings.sebelumnya),
            ),
          ),
        if (!isFirstStep) const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              onPressed?.call((isLastStep) ? 0 : 1);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minimumSize: Size(double.infinity, height),
              foregroundColor: AppColors.white,
              backgroundColor: AppColors.primaryColorDark,
            ),
            child: Text((isLastStep) ? Strings.simpan : Strings.selanjutnya),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
