import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';

Text builTextNormal(BuildContext context, String text,
    {Color color = Colors.black, double fontSize = 8}) {
  return Text(text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: color,
          fontSize: getProportionateScreenHeight(context, fontSize)));
}
