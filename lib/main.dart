import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'repository/data/data.dart';
import 'navigation/main_navigation.dart';

void main() {
  runApp(ChangeNotifierProvider<AllData>(
      create: (BuildContext context) {
        return AllData();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "evan",
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteName.app,
    );
  }
}
