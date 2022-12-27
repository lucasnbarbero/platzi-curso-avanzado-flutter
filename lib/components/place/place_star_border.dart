import 'package:flutter/material.dart';

class PlaceStarBorder extends StatelessWidget {
  const PlaceStarBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
  }
}
