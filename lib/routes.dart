import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/screens/pokedex_screen.dart';
import 'constants/route_constants.dart';

final Map<String, WidgetBuilder> routes = {
  RouteConstants.home: (context) => const PokedexScreen(),
};
