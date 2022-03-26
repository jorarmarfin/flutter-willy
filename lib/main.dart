import 'package:flutter/material.dart';
import 'package:flutter_willy/screens/screen.dart';
import 'package:flutter_willy/themes/default_theme.dart';
import 'package:provider/provider.dart';
import 'providers/providers.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => WordpressProvider(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DefaultTheme.base,
      initialRoute: OpcionesScreen.routerName,
      routes: {
        HomeScreen.routerName: (context) => const HomeScreen(),
        OpcionesScreen.routerName: (context) => const OpcionesScreen(),
        MaterialesScreen.routerName: (context) => const MaterialesScreen(),
        MaterialScreen.routerName: (context) => const MaterialScreen(),
        CursosScreen.routerName: (context) => const CursosScreen(),
        ContatoScreen.routerName: (context) => const ContatoScreen(),
      },
    );
  }
}
