import 'package:flutter/material.dart';
import 'package:project_for_company/repository/model/product.dart';
import 'package:project_for_company/screens/auth/login/login.dart';
import 'package:project_for_company/screens/auth/singup/singup.dart';
import 'package:project_for_company/screens/basked/basked.dart';
import 'package:project_for_company/screens/basked/baskeddetail.dart';

import '../app.dart';

abstract class MainNavigationRouteName {
  static const splash = 'splash';
  static const auth = '/auth';
  static const app = 'app';
  static const profile='/profile';
  static const question='/q';
  static const basked='/basked';
  static const baskedDetail='/baskedDetail';
  static const login='/login';
  static const singUp='/singUp';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteName.login;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.app: (context) =>  const FirstScreen(),
    MainNavigationRouteName.login: (context) =>  const LoginScreen(),
    MainNavigationRouteName.singUp: (context) =>const  SingUpScreen(),
    MainNavigationRouteName.basked: (context) => const  Basked(),
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

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteName.baskedDetail:
        return MaterialPageRoute(
            builder: (context) =>
                BaskedDetail(product: settings.arguments as Product));
      default:
        return MaterialPageRoute(
            builder: (context) => const Text('Navigation Error'));
    }
  }

}
