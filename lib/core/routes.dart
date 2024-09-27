import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../profile/profile_screen.dart';

class Routes {
  static const String profile = '/profile';
  static const String home = '/home';

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
    };
  }
}
