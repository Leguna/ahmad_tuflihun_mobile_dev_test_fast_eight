import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draggable_bottom_nav_cubit.freezed.dart';
part 'draggable_bottom_nav_state.dart';

class DraggableBottomNavCubit extends Cubit<DraggableBottomNavState> {
  DraggableBottomNavCubit() : super(const DraggableBottomNavState.initial());
  bool isExpanded = false;
  int selectedIndex = 0;

  void expand() {
    emit(const DraggableBottomNavState.initial());
    isExpanded = true;
    emit(const DraggableBottomNavState.expanded());
  }

  void collapse() {
    emit(const DraggableBottomNavState.initial());
    isExpanded = false;
    emit(const DraggableBottomNavState.collapsed());
  }

  void toggle() {
    emit(const DraggableBottomNavState.initial());
    isExpanded = !isExpanded;
    if (isExpanded) {
      emit(const DraggableBottomNavState.expanded());
    } else {
      emit(const DraggableBottomNavState.collapsed());
    }
  }

  void select(int index) {
    emit(const DraggableBottomNavState.initial());
    selectedIndex = index;
    emit(DraggableBottomNavState.selected(index: index));
  }
}
