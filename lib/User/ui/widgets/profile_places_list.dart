import 'package:flutter/material.dart';
import './profile_place.dart';
import '../../../Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {
  Place place = Place('Knuckles Mountains Range', '123,123,123',
      'Scenery & Photography', 'Hiking. Water fall hunting. Natural bath');
  Place place_2 = Place('Knuckles Mountains Range', '123,123,123',
      'Scenery & Photography', 'Hiking. Water fall hunting. Natural bath');
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/river-01.jpg', place),
          ProfilePlace('assets/img/mountain-01.jpg', place_2),
        ],
      ),
    );
  }
}
