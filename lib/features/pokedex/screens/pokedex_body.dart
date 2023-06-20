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
          buildOutlinedButton(context, 'Outlined', onPressed: () {}),
          buildImages(context, 'assets/images/kucing.jpg',
              width: 60, height: 60, rounded: 8),
          buildAvatar(context, 'assets/images/kucing.jpg', title: 'HELLOW')
        ],
      ),
    );
  }
}
