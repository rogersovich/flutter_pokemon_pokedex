import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/app_constant.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import '../size_config.dart';

// convert to font weight
FontWeight convertToFontWeight({int weight = 400}) {
  switch (weight) {
    case 100:
      return FontWeight.w100;
    case 200:
      return FontWeight.w200;
    case 300:
      return FontWeight.w300;
    case 400:
      return FontWeight.w400;
    case 500:
      return FontWeight.w500;
    case 600:
      return FontWeight.w600;
    case 700:
      return FontWeight.w700;
    case 800:
      return FontWeight.w800;
    case 900:
      return FontWeight.w900;
    default:
      return FontWeight.normal;
  }
}

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

// DIVIDER
Divider buildDivider(
  BuildContext context, {
  Color? color,
  double height = 30,
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

// VERTICAL SPACING
SizedBox buildSpacing(BuildContext context, {double height = 10}) {
  return SizedBox(
    height: getProportionateScreenHeight(context, height),
  );
}

// TEXT BUTTON
ButtonStyle textButtonStyle(
    BuildContext context,
    bool block,
    double width,
    double height,
    double fontSize,
    FontWeight fontWeight,
    Color color,
    double px,
    double py,
    double rounded) {
  return TextButton.styleFrom(
    foregroundColor: color,
    minimumSize: block ? Size.fromHeight(height) : Size(width, height),
    textStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: AppConstants.defaultLetterSpacing),
    padding: EdgeInsets.symmetric(horizontal: px, vertical: py),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(rounded)),
    ),
  );
}

TextButton buildTextButton(BuildContext context, String text,
    {double rounded = 3,
    bool block = false,
    double width = 60,
    double height = 30,
    double fontSize = 12,
    FontWeight? fontWeight,
    Color? color,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
    IconData? icon,
    required VoidCallback onPressed,
    VoidCallback? onLongPress}) {
  if (icon != null) {
    return TextButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        icon: Icon(
          icon,
          color: color ?? kPrimaryColor,
          size: getProportionateScreenHeight(context, fontSize),
        ),
        style: textButtonStyle(
            context,
            block,
            getProportionateScreenHeight(context, width),
            getProportionateScreenHeight(context, height),
            getProportionateScreenHeight(context, fontSize),
            convertToFontWeight(weight: 500),
            color ?? kPrimaryColor,
            getProportionateScreenHeight(context, padding.horizontal),
            getProportionateScreenHeight(context, padding.vertical),
            getProportionateScreenHeight(context, rounded)),
        label: Text(text));
  } else {
    return TextButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: textButtonStyle(
          context,
          block,
          getProportionateScreenHeight(context, width),
          getProportionateScreenHeight(context, height),
          getProportionateScreenHeight(context, fontSize),
          convertToFontWeight(weight: 500),
          color ?? kPrimaryColor,
          getProportionateScreenHeight(context, padding.horizontal),
          getProportionateScreenHeight(context, padding.vertical),
          getProportionateScreenHeight(context, rounded)),
      child: Text(text),
    );
  }
}

// EVELATED BUTTON
ButtonStyle elevatedButtonStyle(
    BuildContext context,
    bool block,
    double width,
    double height,
    double fontSize,
    FontWeight fontWeight,
    Color color,
    Color bgColor,
    double px,
    double py,
    double rounded) {
  return TextButton.styleFrom(
    foregroundColor: color,
    backgroundColor: bgColor,
    shadowColor: Colors.transparent,
    minimumSize: block ? Size.fromHeight(height) : Size(width, height),
    textStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: AppConstants.defaultLetterSpacing),
    padding: EdgeInsets.symmetric(horizontal: px, vertical: py),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(rounded)),
    ),
  );
}

ElevatedButton buildElevatedButton(BuildContext context, String text,
    {double rounded = 3,
    bool block = false,
    double width = 60,
    double height = 30,
    double fontSize = 12,
    FontWeight? fontWeight,
    Color? color,
    Color? bgColor,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
    IconData? icon,
    required VoidCallback onPressed,
    VoidCallback? onLongPress}) {
  if (icon != null) {
    return ElevatedButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        icon: Icon(
          icon,
          color: color ?? Colors.white,
          size: getProportionateScreenHeight(context, fontSize),
        ),
        style: elevatedButtonStyle(
            context,
            block,
            getProportionateScreenHeight(context, width),
            getProportionateScreenHeight(context, height),
            getProportionateScreenHeight(context, fontSize),
            convertToFontWeight(weight: 500),
            color ?? Colors.white,
            bgColor ?? kPrimaryColor,
            getProportionateScreenHeight(context, padding.horizontal),
            getProportionateScreenHeight(context, padding.vertical),
            getProportionateScreenHeight(context, rounded)),
        label: Text(text));
  } else {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: elevatedButtonStyle(
          context,
          block,
          getProportionateScreenHeight(context, width),
          getProportionateScreenHeight(context, height),
          getProportionateScreenHeight(context, fontSize),
          convertToFontWeight(weight: 500),
          color ?? Colors.white,
          bgColor ?? kPrimaryColor,
          getProportionateScreenHeight(context, padding.horizontal),
          getProportionateScreenHeight(context, padding.vertical),
          getProportionateScreenHeight(context, rounded)),
      child: Text(text),
    );
  }
}
