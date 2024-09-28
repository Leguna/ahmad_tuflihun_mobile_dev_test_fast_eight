import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../core/index.dart';
import 'explore_wellness_widget.dart';
import 'kategori_pilihan_widget.dart';
import 'produk_keuangan_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    homeCubit.refreshController = RefreshController();
    // TODO: Add pull to refresh
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
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
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16.0),
                    ProdukKeuangan(),
                    SizedBox(height: 16.0),
                    KategoriPilihan(),
                    SizedBox(height: 16.0),
                    ExploreWellness(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
