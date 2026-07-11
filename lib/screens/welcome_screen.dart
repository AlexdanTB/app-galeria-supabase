import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('WElcome'),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, "/galeria"),
            child: Text('Galeria'),
          ),
        ],
      ),
    );
  }
}
