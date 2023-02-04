import 'package:flutter/material.dart';

class AppStyles {
  static ThemeData themeData = ThemeData(
    primaryColor: Colors.white, // basic
    secondaryHeaderColor: Colors.black, // secondary 1
    primaryColorLight: const Color.fromRGBO(245,245,245, 1), // secondary 2
    unselectedWidgetColor: const Color.fromRGBO(160, 160, 160, 1),
    splashColor: const Color.fromRGBO(45, 45, 43, 1),
    hoverColor: Colors.black,
    textTheme:  const TextTheme(
      titleLarge: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold, wordSpacing: 2),
      titleMedium: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),

      displayLarge: TextStyle(color: Color.fromRGBO(45, 45, 43, 1), fontSize: 14, fontWeight: FontWeight.w400),
      displayMedium: TextStyle(color: Color.fromRGBO(45, 45, 43, 1), fontSize: 14),

      bodySmall: TextStyle(color: Colors.grey, fontSize: 12),
      bodyMedium: TextStyle(color: Color.fromRGBO(224, 224, 224, 1), fontSize: 14), // btn
      // button: const TextStyle(color: Color.fromRGBO(224, 224, 224, 1), fontSize: 14),
    ),
  );

  static ThemeData darkThemeData = ThemeData();

  ThemeData darkThemeData2 = ThemeData();
}

class App {
  static const double headerHeight = 80.0;

  static const double paddingOnText = 10.0;

  static const double defaultPadding = 20.0;
  static const double padding2 = 30.0;
  static const double padding3 = 40.0;

  static const double radiusMin = 10.0;
  static const double defaultRadius = 20.0;
  static const double radiusMax = 30.0;

  static const Duration defaultDuration = Duration(milliseconds: 200);
}
