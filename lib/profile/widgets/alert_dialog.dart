import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/colors.dart';

AlertDialog buildAlertDialog(BuildContext context,
    {Function(ImageSource)? onPressed}) {
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    alignment: Alignment.centerLeft,
    contentPadding: const EdgeInsets.all(12),
    backgroundColor: Colors.white,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            onPressed?.call(ImageSource.camera);
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft,
            backgroundColor: AppColors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Buka kamera',
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            onPressed?.call(ImageSource.gallery);
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft,
            backgroundColor: AppColors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Ambil dari galeri',
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        // Close
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            alignment: Alignment.center,
            backgroundColor: AppColors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Batal',
            style: TextStyle(
              color: AppColors.primaryColorDark,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    ),
  );
}
