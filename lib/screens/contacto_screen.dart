import 'package:flutter/material.dart';

import '../themes/default_theme.dart';

class ContatoScreen extends StatelessWidget {
  const ContatoScreen({Key? key}) : super(key: key);
  static String routerName = 'contacto';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cursos')),
      body: Container(
        width: double.infinity,
        decoration: fondoScreen(imgFondo),
        child: const Text('data'),
      ),
    );
  }
}
