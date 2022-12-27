import "package:flutter/material.dart";
import '../background/gradient_back.dart';
import '../card/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        const CartImageList(),
      ],
    );
  }
}
