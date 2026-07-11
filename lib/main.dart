import 'package:app_galeria/screens/galeria_screen.dart';
import 'package:app_galeria/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://xwqckriaecsclqazsfjd.supabase.co',
    publishableKey: 'sb_publishable_C44Szb5oT3RBcp-aBbRQpg_fR11Hqh7',
  );

  runApp(MainApp());
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

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
      theme: modoOscuro == true ? ThemeData.dark() : ThemeData.light(),
      routes: {
        "/": (context) => WelcomeScreen(cambiarTema, modoOscuro),
        "/galeria": (context) => GaleriaScreen(),
      },
    );
  }
}
