import 'package:flutter/material.dart';
import 'package:flutter_app/login_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: LoginScreen(),
    );
  }
}
