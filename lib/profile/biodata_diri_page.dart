import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/widgets/stepper_next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/profile_cubit.dart';

class BiodataDiriPage extends StatelessWidget {
  const BiodataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.read<ProfileCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          const Placeholder(),
          const SizedBox(height: 8),
          BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return StepperNextButton(
                isLastStep: c.currentStep == 2,
                isFirstStep: c.currentStep == 0,
                height: 64,
                onPressed: (index) {
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
          ),
        ],
      ),
    );
  }
}
