import 'package:coffee_shop/constants.dart';
import 'package:coffee_shop/screens/home_screen.dart';
import 'package:coffee_shop/screens/themeData.dart';
import 'package:flutter/material.dart';

 ThemeManager _themeManager = ThemeManager();

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: HomeScreen(),
    );
  }
}
