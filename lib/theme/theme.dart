import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.cyanAccent),
      bodySmall: TextStyle(fontSize: 18),
    ),
  );
}
