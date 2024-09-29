import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../core/index.dart';
import '../../core/models/product/product_mdl.dart';
import '../../core/services/local_database.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

const String productsKey = 'products';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial()) {
    getProducts();
  }

  late RefreshController refreshController;

  var switchValue = 0;
  var wishListCount = 0;
  var selectedSort = 'Terpopular';

  List<ProductMdl> products = [];

  Future<void> getProducts() async {
    emit(const HomeState.loading());
    final localDatabase = getIt<LocalDatabase>();
    final productsString = await localDatabase.getString(productsKey);
    if (productsString != null) {
      final productsJson = json.decode(productsString) as List;
      products = productsJson.map((e) => ProductMdl.fromJson(e)).toList();
    }
    emit(HomeState.success(products: products));
  }

  onLoadMore() async {
    emit(const HomeState.loading());
    await Future.delayed(const Duration(milliseconds: 500));
    refreshController.loadComplete();
    emit(HomeState.success(products: List.from([])));
  }

  onRefresh() async {
    emit(const HomeState.loading());
    await Future.delayed(const Duration(milliseconds: 500));
    refreshController.refreshCompleted();
    emit(HomeState.success(products: List.from([])));
  }

  void onSwitch(int value) {
    switchValue = value;
    emit(const HomeState.loading());
    emit(HomeState.success(products: List.from([])));
  }

  void changeSort(String value) {
    selectedSort = value;
    emit(const HomeState.loading());
    emit(HomeState.success(products: List.from([])));
  }
}

enum SortOptions {
  terpopular,
  newest,
  aToZ,
  zToA,
  highestPrice,
  lowestPrice,
}

List<String> sortOptions = [
  'Terpopular',
  'Newest',
  'A-Z',
  'Z-A',
  'Harga Tertinggi',
  'Harga Terendah',
];

extension SortOptionsExtension on SortOptions {
  String get displayName {
    switch (this) {
      case SortOptions.terpopular:
        return 'Terpopular';
      case SortOptions.newest:
        return 'Newest';
      case SortOptions.aToZ:
        return 'A-Z';
      case SortOptions.zToA:
        return 'Z-A';
      case SortOptions.highestPrice:
        return 'Harga Tertinggi';
      case SortOptions.lowestPrice:
        return 'Harga Terendah';
    }
  }
}
