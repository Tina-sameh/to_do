import 'package:flutter/material.dart';
import 'package:todoo/pages/home_screen/homescreen.dart';
import 'package:todoo/pages/splash/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        Splash.routeName:(_)=>Splash(),
      },
      initialRoute:Splash.routeName ,
    );
  }
}
