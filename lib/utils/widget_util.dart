import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import '../constants/style_constant.dart';
import '../size_config.dart';

Text builTextNormal(BuildContext context, String text,
    {Color color = Colors.black, double fontSize = 8}) {
  return Text(text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: color,
          fontSize: getProportionateScreenHeight(context, fontSize)));
}

//* IMAGE
Widget buildImages(BuildContext context, String url,
    {double width = 50,
    double height = 50,
    BoxFit fit = BoxFit.contain,
    double? rounded}) {
  var widthImg = getProportionateScreenHeight(context, width);
  var heightImg = getProportionateScreenHeight(context, height);

  return Image.asset(
    url,
    width: widthImg,
    height: heightImg,
    fit: fit,
    semanticLabel: "Foto Kucing",
  );
}

//* AVATAR
Widget buildAvatar(BuildContext context, String avatar,
    {double width = 50, double height = 50, double? rounded, String? title}) {
  var widthImg = getProportionateScreenHeight(context, width);
  var heightImg = getProportionateScreenHeight(context, height);
  return Container(
    height: heightImg,
    width: widthImg,
    decoration: BoxDecoration(color: Colors.amberAccent),
    child: CircleAvatar(
      radius: 10,
      backgroundImage: AssetImage(avatar),
      child: title != null ? Text(title) : null,
    ),
  );
}

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
SizedBox buildSpacing(BuildContext context, {double height = 4}) {
  return SizedBox(
    height: getProportionateScreenHeight(context, height),
  );
}

Icon iconButtonCustom(BuildContext context, IconData icon, Color? color,
    double fontSize, VoidCallback? onPressed) {
  return Icon(
    icon,
    color: onPressed != null ? color ?? kPrimaryColor : null,
    size: getProportionateScreenHeight(context, fontSize),
  );
}

//* TEXT BUTTON
TextButton buildTextButton(BuildContext context, String text,
    {double rounded = 3,
    bool block = false,
    double width = 50,
    double height = 15,
    double fontSize = 6,
    FontWeight? fontWeight,
    Color? color,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    IconData? icon,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress}) {
  if (icon != null) {
    return TextButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        icon:
            iconButtonCustom(context, icon, kPrimaryColor, fontSize, onPressed),
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

//* EVELATED BUTTON
ElevatedButton buildElevatedButton(BuildContext context, String text,
    {double rounded = 3,
    bool block = false,
    double width = 50,
    double height = 15,
    double fontSize = 6,
    FontWeight? fontWeight,
    Color? color,
    Color? bgColor,
    Color? shadowColor,
    double elevation = 0,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    IconData? icon,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress}) {
  if (icon != null) {
    return ElevatedButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        icon: iconButtonCustom(context, icon, kWhiteColor, fontSize, onPressed),
        style: elevatedButtonStyle(
            context,
            block,
            getProportionateScreenHeight(context, width),
            getProportionateScreenHeight(context, height),
            getProportionateScreenHeight(context, fontSize),
            convertToFontWeight(weight: 500),
            onPressed != null ? color ?? kWhiteColor : null,
            onPressed != null ? bgColor ?? kPrimaryColor : null,
            getProportionateScreenHeight(context, padding.horizontal),
            getProportionateScreenHeight(context, padding.vertical),
            getProportionateScreenHeight(context, rounded),
            shadowColor,
            elevation),
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
          onPressed != null ? color ?? kWhiteColor : null,
          onPressed != null ? bgColor ?? kPrimaryColor : null,
          getProportionateScreenHeight(context, padding.horizontal),
          getProportionateScreenHeight(context, padding.vertical),
          getProportionateScreenHeight(context, rounded),
          shadowColor,
          elevation),
      child: Text(text),
    );
  }
}

//* OUTLINED BUTTON
OutlinedButton buildOutlinedButton(BuildContext context, String text,
    {double rounded = 3,
    bool block = false,
    double width = 50,
    double height = 15,
    double fontSize = 6,
    FontWeight? fontWeight,
    Color? color,
    Color? bgColor,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    IconData? icon,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress}) {
  if (icon != null) {
    return OutlinedButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        icon:
            iconButtonCustom(context, icon, kPrimaryColor, fontSize, onPressed),
        style: outlinedButtonStyle(
            context,
            block,
            getProportionateScreenHeight(context, width),
            getProportionateScreenHeight(context, height),
            getProportionateScreenHeight(context, fontSize),
            convertToFontWeight(weight: 500),
            color ?? kPrimaryColor,
            bgColor ?? Colors.transparent,
            getProportionateScreenHeight(context, padding.horizontal),
            getProportionateScreenHeight(context, padding.vertical),
            getProportionateScreenHeight(context, rounded)),
        label: Text(text));
  } else {
    return OutlinedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      style: outlinedButtonStyle(
          context,
          block,
          getProportionateScreenHeight(context, width),
          getProportionateScreenHeight(context, height),
          getProportionateScreenHeight(context, fontSize),
          convertToFontWeight(weight: 500),
          color ?? kPrimaryColor,
          bgColor ?? Colors.transparent,
          getProportionateScreenHeight(context, padding.horizontal),
          getProportionateScreenHeight(context, padding.vertical),
          getProportionateScreenHeight(context, rounded)),
      child: Text(text),
    );
  }
}
