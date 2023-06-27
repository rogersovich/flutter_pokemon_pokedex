import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';
import 'package:flutter_pokemon_pokedex/utils/button_util.dart';
import 'package:flutter_pokemon_pokedex/utils/dropdown_util.dart';
import 'package:flutter_pokemon_pokedex/utils/text_field_util.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/models/pokedex_form_data_model.dart';

class PokedexFormBuilder extends StatefulWidget {
  final void Function(FormDataModel) onSubmit;

  const PokedexFormBuilder({Key? key, required this.onSubmit})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PokedexFormBuilderState createState() {
    return _PokedexFormBuilderState();
  }
}

class _PokedexFormBuilderState extends State<PokedexFormBuilder> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _emailFieldKey = GlobalKey<FormBuilderFieldState>();

  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  // Initially password is obscure
  bool _obscureText = true;

  // Toggles the password show status
  void _togglePassVisibilty() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(context, 8)),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomFormDropdown(
                  key: const Key('field-dropdown'),
                  name: 'dropdown',
                  validators: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  options: dropdownItems
                      .map<DropdownMenuItem<String>>((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style:
                            TextStyle(color: Colors.black), // Custom text style
                      ),
                    );
                  }).toList(),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomFormTextField(
                key: _emailFieldKey,
                name: 'email',
                labelText: 'Email',
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomFormTextField(
                  key: const Key('field-password'),
                  name: 'password',
                  obscureText: _obscureText,
                  suffixIcon: buildIconButton(context, Icons.remove_red_eye,
                      onPressed: _togglePassVisibilty),
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                )),
            Align(
              alignment: Alignment.centerRight,
              child: buildElevatedButton(context, 'Submit Form', onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  FormDataModel formData = FormDataModel(
                    name: _formKey.currentState!.value['name'],
                  );
                  widget.onSubmit(formData);
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
