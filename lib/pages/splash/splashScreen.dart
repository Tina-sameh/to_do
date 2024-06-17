import 'package:flutter/material.dart';
import 'package:todoo/constants/appAssets.dart';
import 'package:todoo/pages/home_screen/homescreen.dart';

import '../../constants/appColors.dart';

class Splash extends StatefulWidget {
  static const String routeName="splash";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();

}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppAssets.logo),
      ),
    );
  }
}
