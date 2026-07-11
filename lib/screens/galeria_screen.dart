import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GaleriaScreen extends StatelessWidget {
  const GaleriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [Imagen()]),
    );
  }
}

/////

class Imagen extends StatefulWidget {
  const Imagen({super.key});

  @override
  State<Imagen> createState() => _ImagenState();
}

class _ImagenState extends State<Imagen> {
  XFile? foto;

  void actualizarFoto(XFile nuevaFoto) {
    setState(() {
      foto = nuevaFoto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
