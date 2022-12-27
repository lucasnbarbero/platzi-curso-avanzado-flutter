import 'package:flutter/material.dart';
import "review.dart";

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/300-4.jpg", "Nombre de usuario", "Info del usuario",
            "Aqui el comentario"),
        Review("assets/img/300-6.jpg", "Nombre de usuario", "Info del usuario",
            "Aqui el comentario"),
        Review("assets/img/300-27.jpg", "Nombre de usuario", "Info del usuario",
            "Aqui el comentario"),
        Review("assets/img/300-30.jpg", "Nombre de usuario", "Info del usuario",
            "Aqui el comentario"),
      ],
    );
  }
}
