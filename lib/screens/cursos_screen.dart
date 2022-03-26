import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../themes/default_theme.dart';

class CursosScreen extends StatelessWidget {
  const CursosScreen({Key? key}) : super(key: key);
  static String routerName = 'cursos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cursos')),
      body: Container(
        width: double.infinity,
        decoration: fondoScreen(imgFondo),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                _launchURLBrowser(
                    "https://www.youtube.com/c/WILLYMARTINEZSANCHEZ");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 100,
                    decoration: estiloRecuadro(colorBlanco, 15.0),
                    child: Image.network(
                      "https://img.youtube.com/vi/5NftwSw3BZ0/mqdefault.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void _launchURLBrowser(String _url) async {
  if (await canLaunch(_url)) {
    await launch(_url);
  } else {
    throw 'Could not launch $_url';
  }
}
