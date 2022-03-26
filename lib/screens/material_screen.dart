import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../themes/default_theme.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({Key? key}) : super(key: key);
  static String routerName = 'material';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materiales')),
      body: Container(
        width: double.infinity,
        decoration: fondoScreen(imgFondo),
        child: Column(children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Expanded(
              child: Text(
                'Liderazgo es Servicio Liderazgo es Servicio 11',
                style: DefaultTheme.base.textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: estiloRecuadro(colorBlanco, 25.0),
                  child: Image.asset(
                    "assets/images/liderazgo-300x300.png",
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: const Text(
                        'Veniam Lorem minim reprehenderit fugiat. Aliqua tempor tempor cillum commodo id nulla ipsum id adipisicing adipisicing. Nisi officia labore non labore esse. ')),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            padding: const EdgeInsets.all(15.0),
            decoration: estiloRecuadro(Colors.green, 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(FontAwesomeIcons.whatsapp, color: colorBlanco),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Para pedidos',
                    style: TextStyle(color: colorBlanco, fontSize: 20),
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
