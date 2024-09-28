import 'package:freezed_annotation/freezed_annotation.dart';

import '../../index.dart';

part 'app_bar_cubit.freezed.dart';
part 'app_bar_state.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(const AppBarState.initial()){
    getWelcomeByTime();
    emit(const AppBarState.initial());
  }

  getWelcomeByTime() {
    final hour = DateTime.now().hour;
    if (hour < 12 && hour > 3) {
      return Strings.selamatPagi;
    } else if (hour < 17 && hour > 12) {
      return Strings.selamatSiang;
    } else {
      return Strings.selamatMalam;
    }
  }

  String title = Strings.selamatPagi;
  String subTitle = Strings.appName;
}
