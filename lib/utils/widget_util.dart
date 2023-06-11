import 'package:flutter/material.dart';

import '../size_config.dart';

Text builTextNormal(BuildContext context, String text,
    {Color color = Colors.black, double fontSize = 14}) {
  return Text(text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: color,
          fontSize: getProportionateScreenHeight(context, fontSize)));
}

Image buildimages(BuildContext context, String url,
    {double width = 50, double height = 50}) {
  return Image.asset(
    url,
    width: getProportionateScreenWidth(context, width),
    height: getProportionateScreenHeight(context, height),
  );
}
