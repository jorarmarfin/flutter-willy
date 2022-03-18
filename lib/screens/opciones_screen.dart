import 'package:flutter/material.dart';
import 'package:flutter_willy/themes/default_theme.dart';

class OpcionesScreen extends StatelessWidget {
  const OpcionesScreen({Key? key}) : super(key: key);
  static String routerName = 'opciones';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: fondoScreen(imgFondo3),
        child: Stack(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  imgLogoBlanco,
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Siempre Firmes en la Fe',
                  style: DefaultTheme.base.textTheme.headline6,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
