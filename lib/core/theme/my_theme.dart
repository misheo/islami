import 'package:flutter/material.dart';
import 'package:islami/core/theme/my_colors.dart';

class MyTheme {

  static ThemeData lightTheme = ThemeData(
    canvasColor: MyColors.primaryLightColor,
    brightness: Brightness.light,
    primaryColor: MyColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle:  true , 
      titleTextStyle: TextStyle(
        color: MyColors.blackLightColor,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
    ),
    iconTheme: const IconThemeData(
      color: MyColors.primaryLightColor
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: MyColors.primaryLightColor,
      selectedItemColor: MyColors.blackLightColor,
      unselectedItemColor: Colors.white,
      elevation: 20 , 

    )
  );
  
}