import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.cyanAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black),
      titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
      // titleLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.cyanAccent),
      // bodySmall: TextStyle(fontSize: 18),
    ),
  );
}
