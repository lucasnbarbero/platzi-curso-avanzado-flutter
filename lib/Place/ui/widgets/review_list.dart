import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('Aquí el comentario', '1 review - 5 photos',
            'Nombre del usuario', 'assets/img/300-4.jpg'),
        Review('Aquí el comentario', '1 review - 5 photos',
            'Nombre del usuario', 'assets/img/300-6.jpg'),
        Review('Aquí el comentario', '1 review - 5 photos',
            'Nombre del usuario', 'assets/img/300-27.jpg'),
        Review('Aquí el comentario', '1 review - 5 photos',
            'Nombre del usuario', 'assets/img/300-30.jpg'),
      ],
    );
  }
}
