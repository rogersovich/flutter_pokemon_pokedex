import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';

import 'constants/app_constant.dart';
import 'constants/font_constant.dart';

ThemeData customTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: FontConstants.robotoRegular,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4.0),
    borderSide: BorderSide(color: kBlackColor),
    gapPadding: 2,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
      bodyMedium: TextStyle(
          color: kBlackColor, letterSpacing: AppConstants.defaultLetterSpacing),
      bodyLarge: TextStyle(
          color: kBlackColor, letterSpacing: AppConstants.defaultLetterSpacing),
      headlineMedium:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing),
      titleSmall:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing),
      titleMedium:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing),
      titleLarge:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing),
      labelSmall:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing),
      labelMedium:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing),
      labelLarge:
          const TextStyle(letterSpacing: AppConstants.defaultLetterSpacing));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
  );
}
