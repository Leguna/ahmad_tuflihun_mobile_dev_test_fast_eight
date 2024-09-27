import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'app_setup.dart';
import 'core/index.dart';
import 'core/widgets/app_bar/app_bar_cubit.dart';
import 'core/widgets/bottom_nav_bar/bloc/bottom_nav_bar_cubit.dart';
import 'home/bloc/home_cubit.dart';

Future<void> main() async {
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
        BlocProvider<BottomNavBarCubit>(
            create: (context) => BottomNavBarCubit()),
        BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        title: Strings.appName,
        routes: Routes.getRoutes(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          buttonTheme: const ButtonThemeData(
            buttonColor: AppColors.primaryColor,
            textTheme: ButtonTextTheme.primary,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        home: const HomeScreen(),
        initialRoute: Routes.home,
      ),
    );
  }
}
