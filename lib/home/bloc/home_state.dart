part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.update({required String title}) = _Update;
  const factory HomeState.success({@Default([]) List<ProductMdl> products, @Default(0) switchValue}) = _Success;
}
