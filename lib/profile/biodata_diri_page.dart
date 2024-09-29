import 'package:flutter/material.dart';

import 'widgets/profile_stepper_button.dart';

class BiodataDiriPage extends StatelessWidget {
  const BiodataDiriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Placeholder(),
          SizedBox(height: 16),
          ProfileStepperButton(),
        ],
      ),
    );
  }
}
