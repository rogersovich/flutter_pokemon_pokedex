import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/route_constants.dart';
import 'package:flutter_pokemon_pokedex/routes.dart';
import 'package:flutter_pokemon_pokedex/theme.dart';

import 'constants/app_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: customTheme(),
      initialRoute: RouteConstants.home,
      routes: routes,
    );
  }
}
