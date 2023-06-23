import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormTextField extends StatelessWidget {
  final String name;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isFilled;
  final Color? fillColor;
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
    this.validators,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      key: key,
      name: name,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: isFilled, // Add a background color to the field
        fillColor: fillColor ?? Colors.grey[200],
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      validator: FormBuilderValidators.compose(validators ?? []),
    );
  }
}
