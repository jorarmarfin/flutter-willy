import 'package:flutter/material.dart';
import 'package:flutter_willy/themes/default_theme.dart';

class MaterialesScreen extends StatelessWidget {
  const MaterialesScreen({Key? key}) : super(key: key);
  static String routerName = 'materiales';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materiales')),
      body: Container(
        width: double.infinity,
        decoration: fondoScreen(imgFondo2),
        child: ListView.builder(
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(),
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/liderazgo-300x300.png",
          width: 100,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15),
            color: colorBlanco,
            child: Text('Aquel burrito de domingo de ramos',
                style: DefaultTheme.base.textTheme.headline4),
          ),
        )
      ],
    );
  }
}
