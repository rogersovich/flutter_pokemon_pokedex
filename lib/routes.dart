import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/screens/pokedex_screen.dart';

final Map<String, WidgetBuilder> routes = {
  PokedexScreen.routeName: (context) => const PokedexScreen(),
};
