import 'package:app_galeria/screens/galeria_screen.dart';
import 'package:app_galeria/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => WelcomeScreen(),
        "/galeria": (context) => GaleriaScreen(),
      },
    );
  }
}
