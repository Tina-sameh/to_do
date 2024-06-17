import 'package:flutter/material.dart';

import 'appColors.dart';

class MyTheme{
  //Colors , light,dark
  //colors
  static Color primary= AppColors.blue;
  static Color white= AppColors.white;
  static Color backgroundLight= AppColors.mentgreen;
  static Color black= Colors.black;
  static Color red= AppColors.red;
  static Color backgroundDark= AppColors.blackdark;
  static Color blueBlack= AppColors.blueBlack;
  static Color green= AppColors.green;
  static Color grey= AppColors.grey;
//lightTheme
  static ThemeData light=ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: backgroundLight,
appBarTheme: AppBarTheme(
  color: primary,
  elevation: 0,
),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: white),
      titleSmall: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
      unselectedItemColor: grey
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      shape: StadiumBorder(
        side: BorderSide(
          width: 4,
          color: white
        ),
       /* RoundedRectangleBorder(
        side: BorderSide(width: 4,color:white, ),
        borderRadius: BorderRadius.circular(50),
      ),*/
      )
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: white,
    )
  );

}