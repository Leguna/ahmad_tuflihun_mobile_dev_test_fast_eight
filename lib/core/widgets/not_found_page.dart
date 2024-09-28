import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/colors.dart';
import 'package:flutter/material.dart';

import 'my_scaffold.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key, this.text = 'nothing'});
  final String text;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColorLight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nothing to see here only $text',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
