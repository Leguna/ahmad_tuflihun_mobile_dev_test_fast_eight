import 'package:flutter/material.dart';

import 'app_bar/my_app_bar.dart';
import 'my_scaffold.dart';

class NoFoundPage extends StatelessWidget {
  const NoFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      appBar: MyAppBar(title: 'No Page Found'),
      body: Center(
        child: Column(
          children: [
            // Icon
            Icon(Icons.error),
            Text('404'),
          ],
        ),
      ),
    );
  }
}
