import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';
import 'package:flutter_pokemon_pokedex/utils/button_util.dart';
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
                child: CustomFormTextField(
                  key: const Key('field-name'),
                  name: 'name',
                  suffixIcon: buildIconButton(context, Icons.remove_red_eye,
                      size: 12, onPressed: () {}),
                  prefixIcon: buildIconButton(context, Icons.abc,
                      size: 16, onPressed: () {}),
                  validators: [
                    FormBuilderValidators.required(),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FormBuilderTextField(
                name: 'email',
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: FormBuilderTextField(
                name: 'password',
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6),
                ]),
              ),
            ),
            buildElevatedButton(context, 'Submit Form', onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                FormDataModel formData = FormDataModel(
                  name: _formKey.currentState!.value['name'],
                );
                widget.onSubmit(formData);
              }
            })
          ],
        ),
      ),
    );
  }
}
