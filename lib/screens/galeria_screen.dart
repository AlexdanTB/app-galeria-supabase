import 'dart:io';
import 'package:app_galeria/main.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
    return Column(
      children: [
        foto == null
            ? Icon(Icons.camera, size: 150)
            : Image.file(File(foto!.path)),
        FilledButton(
          onPressed: () => abrirGaleria(actualizarFoto),
          child: Text("Abrir galeria"),
        ),
        ElevatedButton(
          onPressed: () => subirImagen(foto!.path),
          child: Text('Subir Imagen'),
        ),
      ],
    );
  }
}

Future<void> abrirGaleria(Function actualizarImg) async {
  final imagen = await ImagePicker().pickImage(
    source: ImageSource.gallery,
  ); //Se puede cambiar a camera
  actualizarImg(imagen);
}

Future<void> subirImagen(String path) async {
  final avatarFile = File(path);
  final String fullPath = await supabase.storage
      .from('avatars')
      .upload(
        'public/avatar1.png',
        avatarFile,
        fileOptions: const FileOptions(cacheControl: '5', upsert: false),
      );
}
