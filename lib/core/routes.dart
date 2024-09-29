import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../profile/edit_profile_page.dart';
import '../profile/profile_screen.dart';

class Routes {
  static const String profile = '/profile';
  static const String home = '/home';
  static const String editProfile = '/profile/edit';


  static WidgetBuilder getRoute(String route) {
    return getRoutes()[route] ?? (context) => const SizedBox();
  }

  Map<String, dynamic>? getRouteArgs(BuildContext context) {
    try {
      return ModalRoute.of(context)?.settings.arguments
          as Map<String, dynamic>?;
    } catch (e) {
      return null;
    }
  }

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      profile: (context) => const ProfileScreen(),
      home: (context) => const HomeScreen(),
      editProfile: (context) => const EditProfilePage(),
    };
  }


  Route createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
