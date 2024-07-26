import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode appTheme = ThemeMode.dark;

  changeTheme(ThemeMode themeMode) {
    appTheme = themeMode;
    notifyListeners();
  }
}
