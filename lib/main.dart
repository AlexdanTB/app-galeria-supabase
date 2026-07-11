import 'package:app_galeria/screens/galeria_screen.dart';
import 'package:app_galeria/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool modoOscuro = false;
  void cambiarTema() {
    setState(() {
      modoOscuro = !modoOscuro;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: modoOscuro ? ThemeData.dark() : ThemeData.light(),
      routes: {
        "/": (context) => WelcomeScreen(cambiarTema, modoOscuro),
        "/galeria": (context) => GaleriaScreen(),
      },
    );
  }
}
