import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/screens/pokedex_body.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({super.key});

  @override
  State<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ini Pokemon",
          style: TextStyle(color: kWhiteColor),
        ),
      ),
      body: const PokedexBody(),
    );
  }
}
