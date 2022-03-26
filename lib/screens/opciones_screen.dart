import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_willy/themes/default_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/providers.dart';

class OpcionesScreen extends StatelessWidget {
  const OpcionesScreen({Key? key}) : super(key: key);
  static String routerName = 'opciones';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, 'contacto');
        },
        label: const Text('Contactame'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: fondoScreen(imgFondo3),
        child: Column(children: [
          const SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  imgLogoBlanco,
                  width: 100,
                ),
              ),
              Expanded(
                child: Text(
                  'Siempre Firmes en la Fe',
                  style: DefaultTheme.base.textTheme.headline6,
                ),
              )
            ],
          ),
          const _Banner(),
          const _ListaOpciones(),
        ]),
      ),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  const _ListaOpciones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: const [
        Opcion(
          icono: FontAwesomeIcons.book,
          texto: 'Material de formacion y evangelización',
          enlace: 'materiales',
        ),
        Opcion(
          icono: FontAwesomeIcons.podcast,
          texto: 'Predicas y reflexiones',
          enlace: 'predicas',
        ),
        Opcion(
          icono: FontAwesomeIcons.addressCard,
          texto: 'Cursos',
          enlace: 'cursos',
        )
      ]),
    );
  }
}

class Opcion extends StatelessWidget {
  final IconData icono;
  final String texto;
  final String enlace;
  const Opcion(
      {Key? key,
      required this.icono,
      required this.texto,
      required this.enlace})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: Icon(
            icono,
            color: colorPrimaryColor,
          ),
          title: Text(
            texto,
            style: DefaultTheme.base.textTheme.bodyText2,
          ),
          trailing: const Icon(Icons.more_vert, color: colorPrimaryColor),
          onTap: () {
            if (enlace == 'predicas') {
              _launchURLBrowser("https://anchor.fm/willy-martinez-sanchez/");
            } else {
              Navigator.pushNamed(context, enlace);
            }
          },
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _wpProvider = Provider.of<WordpressProvider>(context, listen: false);

    return SizedBox(
      height: 150,
      child: FutureBuilder(
        future: _wpProvider.getBanners(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Swiper(
            itemBuilder: (BuildContext context, int index) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return GestureDetector(
                  onTap: () {
                    _launchURLBrowser(
                        _wpProvider.bannerWordpress[index].enlace);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      decoration: estiloRecuadro(colorBlanco, 20.0),
                      child: Image.network(
                        _wpProvider.bannerWordpress[index].imagen,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              }
            },
            itemCount: _wpProvider.bannerWordpress.length,
            viewportFraction: 0.8,
            scale: 0.9,
          );
        },
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
