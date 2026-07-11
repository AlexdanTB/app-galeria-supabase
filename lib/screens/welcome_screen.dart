import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final cambiarTemaW;
  final mOscuro;
  const WelcomeScreen(this.cambiarTemaW, this.mOscuro, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => cambiarTemaW(),
            icon: mOscuro
                ? Icon(Icons.light_mode_sharp)
                : Icon(Icons.dark_mode_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Text('Welcome'),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, "/galeria"),
            child: Text('Galeria'),
          ),
        ],
      ),
    );
  }
}
