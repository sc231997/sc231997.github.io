import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.yellow,
          secondaryHeaderColor: Colors.redAccent),
      dark: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xff0a192f),
          secondaryHeaderColor: Color(0xff64ffda)),
      initial: AdaptiveThemeMode.dark,
      builder: (light, dark) => MaterialApp(
        title: 'Chandan Singh',
        theme: light,
        darkTheme: dark,
        home: Home(),
      ),
    );
  }
}
