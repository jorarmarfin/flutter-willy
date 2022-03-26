import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colores 071A57
const colorPrimaryColor = Color(0xff071A57);
const colorNaranja = Color(0xffFF9A3B);
const colorRojo = Color(0xffEB445C);
const colorAmarillo = Color(0xffFFD101);
const colorCeleste = Color(0xff71EFE6);
const colorBlanco = Colors.white;
const colorTextColor = Colors.black;

//Imagenes
const imgLoading = 'assets/images/loading.gif';
const imgFondo = 'assets/images/fondo.png';
const imgFondo2 = 'assets/images/fondo2.png';
const imgFondo3 = 'assets/images/fondo3.png';
const imgLogoBlanco = 'assets/images/logo-blanco.png';
const imgLogoColor = 'assets/images/logo-color.png';

//Iconos
// const icoNosotros = 'assets/icons/about.png';
// const icoBiblioteca = 'assets/icons/book-stack.png';
// const icoCumples = 'assets/icons/cake.png';
// const icoMisas = 'assets/icons/chapel.png';
// const icoServicios = 'assets/icons/cleaning.png';
// const icoConstruccion = 'assets/icons/construccion2.gif';
// const icoOfrendas = 'assets/icons/money-bag.png';
// const icoFormacion = 'assets/icons/read.png';
// const icoEnlaces = 'assets/icons/zoom.png';
// const icoHistoria = 'assets/icons/history.png';
// const icoEspiritualidad = 'assets/icons/praying.png';
// const icoSantisimo = 'assets/icons/eucharist.png';
// const icoAvisos = 'assets/icons/news.png';

class DefaultTheme {
  static ThemeData base = ThemeData.light().copyWith(
      primaryColor: colorPrimaryColor,
      //Esquema de colores para el appBar
      appBarTheme: AppBarTheme(
          backgroundColor: colorPrimaryColor,
          foregroundColor: Colors.white, //here you can give the text color
          elevation: 0, // si hay o no sombra
          titleTextStyle:
              GoogleFonts.ptSans(fontSize: 20, color: Colors.white)),
      textTheme: TextTheme(
          headline1: GoogleFonts.ptSans(
              fontSize: 20, color: colorBlanco, fontWeight: FontWeight.bold),
          // headline2: GoogleFonts.josefinSans(fontSize: 20, color: Colors.white),
          // headline3: GoogleFonts.josefinSans(
          //     fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          // headline4: GoogleFonts.josefinSans(fontSize: 20, color: Colors.black),
          headline4: GoogleFonts.ptSans(
              fontSize: 20,
              color: colorPrimaryColor,
              fontWeight: FontWeight.bold),
          headline5: GoogleFonts.ptSans(color: Colors.white),
          headline6: GoogleFonts.tangerine(fontSize: 30, color: Colors.white),
          // subtitle1: GoogleFonts.josefinSans(fontSize: 17, color: Colors.black),
          // subtitle2: GoogleFonts.josefinSans(
          //     fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
          bodyText1: const TextStyle(
              color: Colors.black, fontSize: 17, wordSpacing: 5),
          bodyText2: GoogleFonts.ptSans(color: colorPrimaryColor)
          // caption:
          //     const TextStyle(color: Colors.black, fontSize: 7, wordSpacing: 5),
          ));
}

BoxDecoration fondoScreen(String fondo) {
  return BoxDecoration(
    image: DecorationImage(image: AssetImage(fondo), fit: BoxFit.fill),
  );
}

BoxDecoration estiloRecuadro(color,radio) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radio),
  );
}

BoxDecoration estiloBoton(color) {
  return BoxDecoration(
    color: color,
    border: Border.all(color: Colors.white, width: 2.5),
    borderRadius: BorderRadius.circular(20),
  );
}
