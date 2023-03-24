import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.redAccent,
    colorScheme: const ColorScheme.dark(
        // brightness: Brightness.dark,
        // surface: Colors.lightBlue.shade900,
        // onSurface: Colors.white,
        ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.lightBlueAccent[300],
    ),
  );
}
