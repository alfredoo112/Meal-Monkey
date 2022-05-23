import 'package:flutter/material.dart';
import 'package:meal_app/ui/screens/splash_screen.dart';

import 'ui/screens/onboarding_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFC6011),
      ),
      home: SplashScreen(),
    );
  }
}