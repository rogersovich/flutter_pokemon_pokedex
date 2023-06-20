import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';


//* DIVIDER
Divider buildDivider(
  BuildContext context, {
  Color? color,
  double height = 20,
  double thickness = 0.1,
  double indent = 15,
  double endIndent = 15,
}) {
  return Divider(
    color: color ?? kBlackColor,
    thickness: thickness,
    height: height,
    indent: indent,
    endIndent: endIndent,
  );
}

//* VERTICAL SPACING
SizedBox buildSpacing(BuildContext context, {double height = 2}) {
  return SizedBox(
    height: getProportionateScreenHeight(context, height),
  );
}

