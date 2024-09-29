import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/utils/string_utils.dart';
import 'package:flutter/material.dart';

import '../index.dart';

showMySnackBar(context, String message, {bool error = true}) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  SnackBar snackBar = SnackBar(
    content: Text(removeExceptionPrefix(message)),
    backgroundColor: error ? AppColors.red : AppColors.green,
    dismissDirection: DismissDirection.horizontal,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showMyModalBottomSheet(
  BuildContext context, {
  Widget? child,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      ),
    ),
    builder: (context) {
      return child ?? const SizedBox();
    },
  );
}
