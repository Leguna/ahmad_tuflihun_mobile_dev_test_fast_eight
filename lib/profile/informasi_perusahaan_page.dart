import 'package:flutter/material.dart';

import 'widgets/profile_stepper_button.dart';

class InformasiPerusahaanPage extends StatelessWidget {
  const InformasiPerusahaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Placeholder(),
        SizedBox(height: 16.0),
        ProfileStepperButton(),
      ],
    );
  }
}
