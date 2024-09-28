import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/bloc/home_cubit.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/widgets/product/product_list_widget.dart';
import 'package:flutter/widgets.dart';

import '../core/index.dart';
import 'sort_dropdown_widget.dart';

class ExploreWellness extends StatelessWidget {
  const ExploreWellness({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final c = context.read<HomeCubit>();
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.exploreWellness,
                  style: AppTextStyles.titleHome,
                ),
                const SortDropdownWidget(),
              ],
            ),
            const SizedBox(height: 16.0),
            ProductListWidget(products: c.products),
          ],
        );
      },
    );
  }
}
