import 'package:flutter/material.dart';
import 'package:todoo/constants/my_theme.dart';
import 'package:todoo/pages/home_screen/homescreen.dart';
import 'package:todoo/pages/settings/settings.dart';
import 'package:todoo/pages/splash/splashScreen.dart';
import 'package:todoo/pages/task_page/task_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.light,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        Splash.routeName:(_)=>Splash(),
      },
      initialRoute:Splash.routeName  ,
    );
  }
}
