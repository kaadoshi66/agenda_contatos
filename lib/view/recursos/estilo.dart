import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      surface: Colors.lightBlue.shade900,
      onSurface: Colors.white,
      primary: Colors.lightBlue.shade800,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.lightBlueAccent[300],
    ),
  );
}
