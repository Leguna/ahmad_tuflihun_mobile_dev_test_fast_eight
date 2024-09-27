import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../core/index.dart';
import '../../core/models/product_mdl.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial()) {
    emit(const HomeState.initial());
  }

  RefreshController refreshController = RefreshController(initialRefresh: false);

  var switchValue = 0;
  var wishListCount = 0;

  onLoadMore() async {
    emit(const HomeState.loading());
    emit(HomeState.success( products: List.from([])));
  }

  onRefresh() async {
    emit(const HomeState.loading());
    emit(HomeState.success( products: List.from([])));
  }
  void onSwitch(int value) {
    switchValue = value;
    emit(const HomeState.loading());
    emit(HomeState.success( products: List.from([])));
  }

}
