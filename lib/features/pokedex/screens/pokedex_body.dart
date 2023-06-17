import 'package:flutter/material.dart';

import '../../../utils/widget_util.dart';

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
          buildElevatedButton(context, 'Elevate Icon',
              icon: Icons.youtube_searched_for,
              rounded: 12,
              bgColor: Colors.red,
              onPressed: null),
          buildOutlinedButton(context, 'Outlined', onPressed: () {}),
          buildOutlinedButton(context, 'Outlined Disabled', onPressed: null),
          buildOutlinedButton(context, 'Outlined',
              icon: Icons.accessible_sharp, onPressed: null),
        ],
      ),
    );
  }
}
