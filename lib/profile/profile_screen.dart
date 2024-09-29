import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/widgets/header_profile.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_menu_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(
        title: 'Profile',
        titleColor: AppColors.black,
        isTitleCenter: true,
        isShowLeading: true,
        leadingWidth: 60.0,
        backgroundColor: AppColors.white,
        leadingColor: AppColors.black,
        titleStyle: AppTextStyles.appBarTitle.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      body: const Column(
        children: [
          HeaderProfile(),
          SizedBox(height: 16),
          ProfileMenuList(),
        ],
      ),
    );
  }
}


