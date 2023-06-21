import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

//* ICON SVG
Widget buildIconSVG(BuildContext context, String iconURL,
    {double size = 25,
    Color? color,
    BlendMode blend = BlendMode.srcIn,
    String? label}) {
  return SvgPicture.asset(
    iconURL,
    width: getProportionateScreenHeight(context, size),
    height: getProportionateScreenHeight(context, size),
    semanticsLabel: label,
    colorFilter: ColorFilter.mode(color ?? kPrimaryColor, blend),
  );
}
