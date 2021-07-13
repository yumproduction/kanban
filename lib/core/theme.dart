import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData darkTheme() => ThemeData(
        appBarTheme: const AppBarTheme(color: grey),
        cupertinoOverrideTheme: const CupertinoThemeData(primaryColor: black),
        scaffoldBackgroundColor: black,
        accentColor: accent,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16, color: Colors.white),
          bodyText2: TextStyle(fontSize: 16, color: Colors.white),
        ),
      );

  static const black = Color.fromRGBO(0, 0, 0, 255);
  static const grey = Color.fromRGBO(34, 34, 32, 1);
  static const accent = Color.fromRGBO(98, 237, 202, 1);
  static const lightGrey = Color.fromRGBO(108, 107, 106, 1);
  static const red = Color.fromRGBO(140, 53, 53, 1);
}
