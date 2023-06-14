import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';

import '../size_config.dart';

Text builTextNormal(BuildContext context, String text,
    {Color color = Colors.black, double fontSize = 14}) {
  return Text(text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: color,
          fontSize: getProportionateScreenHeight(context, fontSize)));
}

Image buildImages(BuildContext context, String url,
    {double width = 50, double height = 50}) {
  return Image.asset(
    url,
    width: getProportionateScreenWidth(context, width),
    height: getProportionateScreenHeight(context, height),
  );
}

ButtonStyle flatButtonStyle(
    BuildContext context,
    bool block,
    double width,
    double height,
    double fontSize,
    Color color,
    double px,
    double py,
    double rounded) {
  return TextButton.styleFrom(
    foregroundColor: color,
    minimumSize: block ? Size.fromHeight(height) : Size(width, height),
    textStyle: TextStyle(fontSize: fontSize),
    padding: EdgeInsets.symmetric(horizontal: px, vertical: py),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(rounded)),
    ),
  );
}

TextButton buildButton(BuildContext context, String text,
    {double rounded = 3,
    bool block = false,
    double width = 60,
    double height = 30,
    double fontSize = 12,
    Color? color,
    EdgeInsets padding =
        const EdgeInsets.symmetric(horizontal: 8, vertical: 4)}) {
  return TextButton(
    onPressed: () {},
    style: flatButtonStyle(
        context,
        block,
        getProportionateScreenHeight(context, width),
        getProportionateScreenHeight(context, height),
        getProportionateScreenHeight(context, fontSize),
        color == null ? kPrimaryColor : Colors.blue,
        getProportionateScreenHeight(context, padding.horizontal),
        getProportionateScreenHeight(context, padding.vertical),
        getProportionateScreenHeight(context, rounded)),
    child: Text(text),
  );
}
