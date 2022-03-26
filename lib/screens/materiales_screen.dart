import 'package:flutter/material.dart';
import 'package:flutter_willy/themes/default_theme.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';

class MaterialesScreen extends StatelessWidget {
  const MaterialesScreen({Key? key}) : super(key: key);
  static String routerName = 'materiales';

  @override
  Widget build(BuildContext context) {
    final _wpProvider = Provider.of<WordpressProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Materiales')),
      body: Container(
        width: double.infinity,
        decoration: fondoScreen(imgFondo),
        child: FutureBuilder(
          future: _wpProvider.getMateriales(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView.builder(
              itemCount: _wpProvider.materialWordpress.length,
              itemBuilder: (BuildContext context, int index) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  _wpProvider.indice = index;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                        titulo: _wpProvider.materialWordpress[index].nombre,
                        imagen: _wpProvider.materialWordpress[index].imagen),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class Material extends StatelessWidget {
  const Material({
    Key? key,
    required this.titulo,
    required this.imagen,
  }) : super(key: key);
  final String titulo;
  final String imagen;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'material');
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Row(
            children: [
              Image.network(
                imagen,
                width: 100,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(titulo,
                      style: DefaultTheme.base.textTheme.headline4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
