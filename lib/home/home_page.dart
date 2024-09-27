import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/bloc/home_cubit.dart';
import 'package:flutter/material.dart';

import '../core/index.dart';
import '../gen/assets.gen.dart';
import 'widgets/item_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> menu = {
      'Urun': Assets.svgs.people,
      'Pembiayaan Porsi Haji': Assets.svgs.muslim,
      'Financial Check Up': Assets.svgs.finance,
      'Asuransi Mobil': Assets.svgs.car,
      'Asuransi Properti': Assets.svgs.home,
    };

    final colors = [
      Colors.amber,
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.purple,
      Colors.orange,
      Colors.pink,
      Colors.teal,
    ];

    final Map<String, String> kategori = {
      'Hobi': Assets.svgs.hobby,
      'Merchandise': Assets.svgs.merch,
      'Gaya Hidup Sehat': Assets.svgs.health,
      'Konseling & Rohani': Assets.svgs.chat,
      'Self Development': Assets.svgs.brain,
      'Perencanaan Keuangan': Assets.svgs.card,
      'Konsultasi Medis': Assets.svgs.mask,
      'Lihat Semua': Assets.svgs.all,
    };

    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    Text(
                      Strings.produkKeuangan,
                      style: AppTextStyles.titleHome,
                    ),
                    const SizedBox(height: 8.0),
                    ItemList(items: menu, colors: colors),
                    const SizedBox(height: 16.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.kategoriPilihan,
                          style: AppTextStyles.titleHome,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                Strings.wishlist,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              CircleAvatar(
                                minRadius: 10.0,
                                backgroundColor: Colors.amber,
                                child: Text(
                                  context
                                      .read<HomeCubit>()
                                      .wishListCount
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    ItemList(items: kategori, colors: colors),
                    const SizedBox(height: 16.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.exploreWellness,
                          style: AppTextStyles.titleHome,
                        ),
                        Text(
                          Strings.all,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
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
