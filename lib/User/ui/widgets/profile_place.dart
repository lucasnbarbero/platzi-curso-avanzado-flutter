import 'package:flutter/material.dart';
import '../../../Place/model/place.dart';
import './profile_place_info.dart';

class ProfilePlace extends StatelessWidget {
  String image;
  Place place;

  ProfilePlace(this.image, this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    final photoCard = Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 70.0),
      height: 220.0,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          color: Colors.red,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 0.5))
          ]),
    );

    return Stack(
      alignment: const Alignment(0.0, 0.8),
      children: <Widget>[photoCard, ProfilePlaceInfo(place)],
    );
  }
}
