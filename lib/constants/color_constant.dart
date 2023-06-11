import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../size_config.dart';

Color kPrimaryColor = HexColor('#2563eb');
Color kWhiteColor = HexColor('#FFFFFF');
Color kBlackColor = HexColor('#030712');

MaterialColor kPrimaryColors = MaterialColor(
  0xFFFF7046,
  <int, Color>{
    50: HexColor('#2563eb'),
    100: HexColor('#2563eb'),
    200: HexColor('#2563eb'),
    300: HexColor('#2563eb'),
    400: HexColor('#2563eb'),
    500: HexColor('#2563eb'),
    600: HexColor('#2563eb'),
    700: HexColor('#2563eb'),
    800: HexColor('#2563eb'),
    900: HexColor('#2563eb'),
  },
);

Text builTextNormal(
    BuildContext context, String text, Color colorss, bool coret) {
  if (coret) {
    return Text(text,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: colorss,
            fontSize: getProportionateScreenHeight(context, 10),
            decoration: TextDecoration.lineThrough,
            decorationColor: kWhiteColor));
  } else {
    return Text(text,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: colorss,
          fontSize: getProportionateScreenHeight(context, 10),
        ));
  }
}

Image buildimages(BuildContext context, String url,
    {double width = 50, double height = 50}) {
  return Image.asset(
    url,
    width: getProportionateScreenWidth(context, width),
    height: getProportionateScreenHeight(context, height),
  );
}
