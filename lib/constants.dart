import 'package:flutter/material.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0xffFF8D29);
const ksecondaryColor = Color(0xFF153C3D);
const kTextColor = Color(0xFF3C4046);
const kTextLightColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

class ThemeManager with ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark){
    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
}