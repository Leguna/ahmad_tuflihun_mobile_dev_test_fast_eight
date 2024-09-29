import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profile_cubit.dart';
import 'stepper_next_button.dart';

class ProfileStepperButton extends StatelessWidget {
  const ProfileStepperButton({
    super.key,
    this.onPressed,
  });

  final void Function(int)? onPressed;

  @override
  Widget build(BuildContext context) {
    final c = context.read<ProfileCubit>();
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return StepperNextButton(
          isLastStep: c.currentStep == 2,
          isFirstStep: c.currentStep == 0,
          height: 64,
          onPressed: (onPressed != null)
              ? onPressed!
              : (index) {
                  switch (index) {
                    case 0:
                      context.read<ProfileCubit>().submit();
                      break;
                    case 1:
                      context.read<ProfileCubit>().nextStep();
                      break;
                    case -1:
                      context.read<ProfileCubit>().previousStep();
                      break;
                  }
                },
        );
      },
    );
  }
}
