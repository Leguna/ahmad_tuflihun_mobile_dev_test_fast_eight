import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/core/index.dart';
import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

import 'bloc/home_cubit.dart';

class SortDropdownWidget extends StatelessWidget {
  const SortDropdownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final c = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: SizedBox(
            width: 120.0,
            child: DropdownButton<String>(
              underline: const SizedBox(),
              value: c.selectedSort,
              focusColor: Colors.black,
              dropdownColor: Colors.grey[200],
              isDense: true,
              isExpanded: false,
              selectedItemBuilder: (_) {
                return sortOptions.map(
                  (String value) {
                    return SizedBox(
                      width: 80,
                      child: TextScroll(
                        mode: TextScrollMode.endless,
                        pauseBetween: const Duration(seconds: 1),
                        velocity:
                            const Velocity(pixelsPerSecond: Offset(20, 0)),
                        value,
                        intervalSpaces: 5,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ).toList();
              },
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              items: sortOptions.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  onTap: () {
                    c.changeSort(value);
                  },
                  child: SizedBox(
                    width: 200.0,
                    child: Text(
                      value,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
        );
      },
    );
  }
}
