import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draggable_bottom_nav_cubit.freezed.dart';
part 'draggable_bottom_nav_state.dart';

class DraggableBottomNavCubit extends Cubit<DraggableBottomNavState> {
  DraggableBottomNavCubit() : super(const DraggableBottomNavState.initial());
  bool isExpanded = false;
  int selectedIndex = 0;
  double size = 0.14;

  void setSize(double newSize) {
    size = newSize;
    emit(const DraggableBottomNavState.sizeChanged());
  }

  void expand() {
    isExpanded = true;
    emit(const DraggableBottomNavState.expanded());
  }

  void collapse() {
    isExpanded = false;
    emit(const DraggableBottomNavState.collapsed());
  }

  void toggle() {
    if (isExpanded) {
      collapse();
    } else {
      expand();
    }
  }

  void select(int index) {
    emit(const DraggableBottomNavState.initial());
    selectedIndex = index;
    emit(DraggableBottomNavState.selected(index: index));
  }
}
