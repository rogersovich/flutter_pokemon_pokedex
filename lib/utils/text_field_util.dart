import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';
import 'package:flutter_pokemon_pokedex/utils/text_util.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormTextField extends StatelessWidget {
  final String name;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isFilled;
  final Color? fillColor;
  final bool obscureText;
  final bool isReadonly;
  final bool isEnabled;
  final String align;
  final double rounded;
  final Color? borderColor;
  final Color? borderColorActive;
  final Color? borderColorError;
  final double borderWidth;
  final BorderStyle borderStyle;
  final List<FormFieldValidator>? validators;

  const CustomFormTextField({
    required Key key,
    required this.name,
    this.labelText,
    this.hintText = 'Placeholder',
    this.suffixIcon,
    this.prefixIcon,
    this.isFilled = false,
    this.fillColor,
    this.obscureText = false,
    this.isReadonly = false,
    this.isEnabled = true,
    this.align = 'left',
    this.rounded = 4,
    this.borderColor,
    this.borderColorActive,
    this.borderColorError,
    this.borderWidth = 0.8,
    this.borderStyle = BorderStyle.solid,
    this.validators,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius =
        BorderRadius.circular(getProportionateScreenHeight(context, rounded));

    return FormBuilderTextField(
      key: key,
      name: name,
      obscureText: obscureText,
      readOnly: isReadonly,
      enabled: isEnabled,
      textAlign: getTextAlignFromString(align),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: isFilled, // Add a background color to the field
        fillColor: fillColor ?? Colors.grey[200],
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: borderColor ?? kBorderColor,
              width: borderWidth,
              style: borderStyle),
          borderRadius: borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: borderColorActive ?? kBorderColorActive,
              width: borderWidth,
              style: borderStyle),
          borderRadius: borderRadius,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: borderColorError ?? kBorderColorError,
              width: borderWidth,
              style: borderStyle),
          borderRadius: borderRadius,
        ),
      ),
      validator: FormBuilderValidators.compose(validators ?? []),
    );
  }
}
