import 'package:flutter/material.dart';
import 'place_star.dart';
import 'place_star_border.dart';
import 'place_star_half.dart';

class PlaceTitle extends StatelessWidget {
  String namePlace;

  PlaceTitle(this.namePlace, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: const <Widget>[
            PlaceStar(),
            PlaceStar(),
            PlaceStar(),
            PlaceStarHalf(),
            PlaceStarBorder()
          ],
        )
      ],
    );
  }
}
