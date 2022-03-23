import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_willy/themes/default_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpcionesScreen extends StatelessWidget {
  const OpcionesScreen({Key? key}) : super(key: key);
  static String routerName = 'opciones';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
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
          enlace: 'google',
        ),
        Opcion(
          icono: FontAwesomeIcons.addressCard,
          texto: 'Cursos',
          enlace: 'google',
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
            Navigator.pushNamed(context, enlace);
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
    return Container(
      height: 150,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "https://img.youtube.com/vi/5NftwSw3BZ0/mqdefault.jpg",
            fit: BoxFit.fill,
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
