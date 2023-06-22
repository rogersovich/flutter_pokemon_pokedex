import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

//* ICON SVG
Widget buildIconSVG(BuildContext context, String iconURL,
    {double size = 25,
    Color? color,
    BlendMode blend = BlendMode.srcIn,
    String? label}) {
  final isURLOnline = Uri.tryParse(iconURL)?.hasScheme == true;
  return isURLOnline
      ? SvgPicture.network(
          iconURL,
          width: getProportionateScreenHeight(context, size),
          height: getProportionateScreenHeight(context, size),
          semanticsLabel: label,
          colorFilter: color != null ? ColorFilter.mode(color, blend) : null,
        )
      : SvgPicture.asset(
          "assets/svg/$iconURL",
          width: getProportionateScreenHeight(context, size),
          height: getProportionateScreenHeight(context, size),
          semanticsLabel: label,
          colorFilter: color != null ? ColorFilter.mode(color, blend) : null,
        );
}

Widget buildIcon(BuildContext context, IconData iconURL,
    {double size = 25, Color? color, String? label}) {
  return Icon(
    iconURL,
    color: color ?? kPrimaryColor,
    size: getProportionateScreenHeight(context, size),
    semanticLabel: label,
  );
}
