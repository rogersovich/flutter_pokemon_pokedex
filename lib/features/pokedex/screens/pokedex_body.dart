import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/models/pokedex_form_data_model.dart';
import 'package:flutter_pokemon_pokedex/features/pokedex/widgets/pokedex_form_builder.dart';
import 'package:flutter_pokemon_pokedex/size_config.dart';
import 'package:flutter_pokemon_pokedex/utils/text_util.dart';

class PokedexBody extends StatefulWidget {
  const PokedexBody({super.key});

  @override
  State<PokedexBody> createState() => _PokedexBodyState();
}

class _PokedexBodyState extends State<PokedexBody> {
  void _handleSubmit(FormDataModel formData) {
    Map<String, dynamic> json = formData.toJson();
    print(json);
    // Handle form submission here
    // You can use the formData object to access the form data
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenHeight(context, 8),
                  vertical: getProportionateScreenHeight(context, 4)
                ),
                child: buildTextNormal(context, 'Form Register',
                    weight: FontWeight.w700, fontSize: 10)),
            PokedexFormBuilder(onSubmit: _handleSubmit)
          ],
        ),
      ),
    );
  }
}
