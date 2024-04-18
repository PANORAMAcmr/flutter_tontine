import 'package:flutter/material.dart';

final themeData = ThemeData(
    primaryColor: const Color(0xFF003366),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xFF006699),
        primary: const Color(0xFF003366),
        onPrimary: const Color(0xFF003366)),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF003366),
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Colors.white)),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5))),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(color: Color(0xFF003366))),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5))),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF003366)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF003366)),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    //)),
    iconTheme: const IconThemeData(color: Color(0xFF003366)));
