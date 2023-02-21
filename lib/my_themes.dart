import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green.shade500,
    colorScheme: const ColorScheme.dark(),
    cardColor: Colors.grey.shade900,
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green.shade500,
    colorScheme: const ColorScheme.light(),
    cardColor: Colors.grey.shade200,
  );
}
