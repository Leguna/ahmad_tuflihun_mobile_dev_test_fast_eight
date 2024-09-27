import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_bar_cubit.freezed.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarState.initial(page: 2));

  final PageController pageController = PageController(initialPage: 2);

  void jumpToPage(int index) {
    pageController.jumpToPage(index);
    emit(BottomNavBarState.success(page: index));
  }
}
