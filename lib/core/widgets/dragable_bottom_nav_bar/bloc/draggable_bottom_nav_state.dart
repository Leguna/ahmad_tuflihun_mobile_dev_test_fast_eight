part of 'draggable_bottom_nav_cubit.dart';

@freezed
class DraggableBottomNavState with _$DraggableBottomNavState {
  const factory DraggableBottomNavState.initial() = _Initial;
  const factory DraggableBottomNavState.expanded() = _Expanded;
  const factory DraggableBottomNavState.collapsed() = _Collapsed;
  const factory DraggableBottomNavState.selected({required int index}) = _Selected;
}
