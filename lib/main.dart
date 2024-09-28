import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'app_setup.dart';
import 'core/index.dart';
import 'core/widgets/app_bar/app_bar_cubit.dart';
import 'core/widgets/dragable_bottom_nav_bar/bloc/draggable_bottom_nav_cubit.dart';
import 'home/bloc/home_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBarCubit>(create: (context) => AppBarCubit()),
        BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
        BlocProvider<DraggableBottomNavCubit>(create: (context) => DraggableBottomNavCubit()),
      ],
      child: MaterialApp(
        title: Strings.appName,
        routes: Routes.getRoutes(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: AppColors.primaryColor,
          splashColor: AppColors.primaryColor.withOpacity(0.5),
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: AppColors.primaryColor,
            surfaceTintColor: Colors.black,
          ),
          inputDecorationTheme: defaultInputTheme,
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: AppColors.primaryColor,
            cursorColor: AppColors.primaryColor,
          ),
          cardTheme: const CardTheme(
            color: AppColors.primaryColor,
            surfaceTintColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: AppColors.primaryColor,
            textTheme: ButtonTextTheme.primary,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        home: const HomeScreen(),
        initialRoute: Routes.home,
      ),
    );
  }
}
