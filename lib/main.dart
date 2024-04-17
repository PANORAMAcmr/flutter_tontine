import 'package:flutter/material.dart';
import 'package:tontine/pages/AboutPage.dart';
import 'package:tontine/pages/CreateAccountPage.dart';
import 'package:tontine/pages/HomePage.dart';
import 'package:tontine/pages/LoginPage.dart';
import 'package:tontine/pages/WelcomePage.dart';
import 'package:tontine/pages/RegistrationPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(null),
        '/about': (context) => AboutPage(),
        '/create_account': (context) => CreateAccountPage(),
        '/registration': (context) => RegistrationPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(), // Ajoutez cette route

      },
      theme: ThemeData(
        primaryColor: Color(0xFF003366), // Couleur d'accentuation de l'application
        scaffoldBackgroundColor: Colors.white, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF006699)),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white)// Couleur de fond par défaut
      ),
    );
  }
}
