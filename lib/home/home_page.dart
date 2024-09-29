import 'dart:io';

import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../core/index.dart';
import '../core/widgets/app_bar/app_bar_cubit.dart';
import '../profile/bloc/profile_cubit.dart';
import 'explore_wellness_widget.dart';
import 'kategori_pilihan_widget.dart';
import 'produk_keuangan_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final refreshController = RefreshController(initialRefresh: false);
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final avatarPath = context.select((ProfileCubit cubit) => cubit.user.image);
        final userName = context.select((ProfileCubit cubit) => cubit.user.name)?? '';
        return MyScaffold(
          appBar: MyAppBar(
            title: context.read<AppBarCubit>().title,
            subTitle: userName,
            actions: [
              Stack(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(32.0),
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 4,
                    child: CircleAvatar(
                      radius: 8.0,
                      backgroundColor: AppColors.red,
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.small.copyWith(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.profile);
                },
                child: Stack(
                  children: [
                    (avatarPath != null && avatarPath != '')
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.file(
                              File(avatarPath),
                              width: 32,
                              height: 32,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColorLight,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                  ],
                ),
              ),
              const SizedBox(width: 16.0),
            ],
          ),
          body: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return SmartRefresher(
                controller: refreshController,
                onRefresh: () async {
                  refreshController.refreshCompleted();
                },
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 100,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 16.0),
                            ProdukKeuangan(),
                            SizedBox(height: 16.0),
                            KategoriPilihan(),
                            SizedBox(height: 16.0),
                            ExploreWellness(),
                            SizedBox(height: 128.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
