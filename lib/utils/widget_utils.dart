import 'package:flutter/material.dart';

import '../size_config.dart';
import '../constants/color_constant.dart';

Text builTextNormal(BuildContext context, String text,
    {Color color = Colors.black, double fontSize = 12}) {
  return Text(text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: color,
          fontSize: getProportionateScreenHeight(context, 12),
          decoration: TextDecoration.lineThrough,
          decorationColor: kWhiteColor));
}

Image buildimages(BuildContext context, String url,
    {double width = 50, double height = 50}) {
  return Image.asset(
    url,
    width: getProportionateScreenWidth(context, width),
    height: getProportionateScreenHeight(context, height),
  );
}
