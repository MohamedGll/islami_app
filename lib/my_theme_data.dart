import 'package:flutter/material.dart';
import 'package:islami_app/constant.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontFamily: 'El Messiri',
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: kPrimaryColorLight,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kPrimaryColorLight,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontFamily: 'El Messiri',
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: 'El Messiri',
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'El Messiri',
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontFamily: 'El Messiri',
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: yellowColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kPrimaryColorDark,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontFamily: 'El Messiri',
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: 'El Messiri',
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'El Messiri',
        color: Colors.white,
      ),
    ),
  );
}
