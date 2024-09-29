import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/home/home_screen.dart';
import 'package:ahmad_tuflihun_mobile_dev_test_fast_eight/profile/bloc/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_setup.dart';
import 'core/index.dart';
import 'core/widgets/app_bar/app_bar_cubit.dart';
import 'core/widgets/dragable_bottom_nav_bar/bloc/draggable_bottom_nav_cubit.dart';
import 'home/bloc/home_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServices();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBarCubit>(create: (context) => AppBarCubit()),
        BlocProvider<ProfileCubit>(create: (context) => ProfileCubit()),
        BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
        BlocProvider<DraggableBottomNavCubit>(
            create: (context) => DraggableBottomNavCubit()),
      ],
      child: MaterialApp(
        title: Strings.appName,
        onGenerateRoute: (settings) {
          final routeName = settings.name;
          final builder = Routes.getRoute(routeName!);
          return Routes().createRoute(builder(context));
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: AppColors.primaryColor,
          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: AppColors.primaryColor,
            surfaceTintColor: Colors.black,
          ),
          dropdownMenuTheme: const DropdownMenuThemeData(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
            ),
          ),
          inputDecorationTheme: defaultInputTheme.copyWith(
            labelStyle: const TextStyle(color: Colors.black),
            hintStyle: const TextStyle(color: Colors.black),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 2.0,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            errorStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12.0,
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 1.0,
              ),
            ),
          ),
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
            titleMedium: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            bodyLarge: TextStyle(
              fontSize: 18.0,
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
