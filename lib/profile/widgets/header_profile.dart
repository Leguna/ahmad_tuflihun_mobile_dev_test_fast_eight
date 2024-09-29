import 'dart:io';

import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/strings.dart';
import '../bloc/profile_cubit.dart';
import 'alert_dialog.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final c = context.read<ProfileCubit>();
        final avatarPath =
            context.select((ProfileCubit cubit) => cubit.user.image);
        final userName =
            context.select((ProfileCubit cubit) => cubit.user.name) ?? '-';
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
                          return buildAlertDialog(context, onPressed: (source) {
                            c.pickImage(source);
                          });
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
}
