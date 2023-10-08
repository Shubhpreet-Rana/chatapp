import 'package:flutter/material.dart';

import 'color_schemes.dart';
import 'custom_color.dart';
class AppTheme {
  static ThemeData darkTheme = _darkTheme;

  static ThemeData lightTheme = _lightTheme;
}

ThemeData _lightTheme = ThemeData.from(
  colorScheme: lightColorScheme,
  useMaterial3: true,
).copyWith(
  extensions: [lightCustomColors],
  searchBarTheme: SearchBarThemeData(elevation: MaterialStatePropertyAll(1)),
    searchViewTheme: SearchViewThemeData(backgroundColor: Colors.red),
  inputDecorationTheme: InputDecorationTheme(filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)) )
  );


ThemeData _darkTheme = ThemeData.from(
  colorScheme: darkColorScheme,
  useMaterial3: true,
).copyWith(
    extensions: [darkCustomColors],
    inputDecorationTheme: InputDecorationTheme(filled: true, border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)) )
);


