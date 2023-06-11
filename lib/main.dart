import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/screens/pokedex_screen.dart';
import 'package:flutter_pokemon_pokedex/routes.dart';
import 'package:flutter_pokemon_pokedex/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: PokedexScreen.routeName,
      routes: routes,
    );
  }
}
