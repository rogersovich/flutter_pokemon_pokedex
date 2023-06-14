import 'package:flutter/material.dart';
import 'package:flutter_pokemon_pokedex/constants/color_constant.dart';

import '../../../utils/widget_util.dart';

class PokedexBody extends StatefulWidget {
  const PokedexBody({super.key});

  @override
  State<PokedexBody> createState() => _PokedexBodyState();
}

class _PokedexBodyState extends State<PokedexBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: builTextNormal(context, 'Ikan Hiu makan baso',
              color: kBlackColor),
        ),
        buildButton(context, 'ini button')
      ],
    );
  }
}
