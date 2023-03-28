import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.orange,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      surface: Colors.grey.shade900,
      onSurface: Colors.white,
      primary: Colors.grey.shade800,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.grey.shade300,
    ),

    //Botão Flutuante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      hoverColor: Colors.orange.shade300,
    ),
  );
}
