import 'package:flutter/material.dart';

import '../app.dart';

abstract class MainNavigationRouteName {
  static const splash = 'splash';
  static const auth = '/auth';
  static const app = 'app';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.app;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.app: (context) => const  FirstScreen(),
  };

  //  Route<Object> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case MainNavigationRouteName.app:
  //       return MaterialPageRoute(
  //           builder: (context) =>
  //               App(phoneNumber: settings.arguments as String?));
  //     default:
  //       return MaterialPageRoute(
  //           builder: (context) => const Text('Navigation Error'));
  //   }
  // }
}
