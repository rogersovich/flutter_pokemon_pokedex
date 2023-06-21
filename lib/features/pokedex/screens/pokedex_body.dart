import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pokemon_pokedex/utils/button_util.dart';
import 'package:flutter_pokemon_pokedex/utils/image_util.dart';

class PokedexBody extends StatefulWidget {
  const PokedexBody({super.key});

  @override
  State<PokedexBody> createState() => _PokedexBodyState();
}

class _PokedexBodyState extends State<PokedexBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildTextButton(
            context,
            'Submit Icon',
            icon: Icons.access_alarm,
            onPressed: () {},
          ),
          buildTextButton(context, 'Submit Gass', onPressed: () {}),
          buildElevatedButton(context, 'Elevated Button', onPressed: () {}),
          buildOutlinedButton(context, 'Outlined', onPressed: () {}),
          buildAvatar(
            context,
            'https://picsum.photos/seed/picsum/200/300',
            title: 'AX',
          ),
          const Text(
            'FONT DEFAULT',
            style: TextStyle(fontSize: 25),
          ),
          const Text(
            'FONT LOCAL',
            style: TextStyle(fontSize: 25, fontFamily: 'Nunito'),
          ),
          Text(
            'FONT ONLINE',
            style: GoogleFonts.lora(
              textStyle: const TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
