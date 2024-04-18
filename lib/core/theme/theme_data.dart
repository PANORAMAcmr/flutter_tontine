import 'package:flutter/material.dart';

final themeData = ThemeData(
    primaryColor: const Color(0xFF003366),
    scaffoldBackgroundColor: Colors.white,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF006699),primary:const Color(0xFF003366),onPrimary:const Color(0xFF003366)  ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF003366),
        iconTheme: IconThemeData(color: Colors.white)),
    iconTheme: const IconThemeData(color: Color(0xFF003366)));
