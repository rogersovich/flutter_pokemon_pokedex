import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Color kPrimaryColor = HexColor('#2563eb');
Color kWhiteColor = HexColor('#FFFFFF');
Color kBlackColor = HexColor('#030712');

const int _primaryColorValue = 0xFF2563eb;
MaterialColor kPrimaryColors = MaterialColor(
  _primaryColorValue,
  <int, Color>{
    50: HexColor('#e5ecfd'),
    100: HexColor('#bed0f9'),
    200: HexColor('#92b1f5'),
    300: HexColor('#6692f1'),
    400: HexColor('#6692f1'),
    500: HexColor('#2563eb'),
    600: HexColor('#215be9'),
    700: HexColor('#215be9'),
    800: HexColor('#1647e2'),
    900: HexColor('#0d35dd'),
  },
);
