import 'package:flutter/material.dart';
import 'package:tontine/core/app_router.dart';
import 'core/theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mon Application',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: themeData
    );
  }
}
