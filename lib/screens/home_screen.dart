import 'package:flutter/material.dart';

import '../themes/default_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routerName = 'inicio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'opciones');
        },
        child: Container(
          width: double.infinity,
          decoration: fondoScreen(imgFondo2),
          child: const Center(
            child: Image(width: 270.0, image: AssetImage(imgLogoColor)), //
          ),
        ),
      ),
    );
  }
}
