import 'dart:io';

import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/models/user/user_mdl.dart';
import '../../core/strings.dart';
import '../bloc/profile_cubit.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final c = context.read<ProfileCubit>();
        final avatarPath = state.maybeWhen(
          orElse: () => null,
          photoProfilePicked: (path) => path,
          profileLoaded: (UserMdl user) => user.image,
        );
        final userName = state.maybeWhen(
              orElse: () => '-',
              profileLoaded: (UserMdl user) => user.name,
            ) ??
            '-';
        return Row(
          children: [
            const SizedBox(width: 20),
            Stack(
              children: [
                (avatarPath != null && avatarPath != '')
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.file(
                          File(avatarPath),
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColorLight,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          userName[0],
                          style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return buildAlertDialog(context);
                        },
                      );
                    },
                    child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (userName != '') ? userName : '-',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(Strings.masukDenaganGoogle),
              ],
            ),
          ],
        );
      },
    );
  }

  AlertDialog buildAlertDialog(BuildContext context) {
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
              context.read<ProfileCubit>().pickImage(ImageSource.camera);
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
              context.read<ProfileCubit>().pickImage(ImageSource.gallery);
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
}
