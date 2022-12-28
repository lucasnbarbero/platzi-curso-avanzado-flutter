import "package:flutter/material.dart";
import "card_image.dart";

class CartImageList extends StatelessWidget {
  const CartImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/bahamas-01.jpg"),
          CardImage("assets/img/bahamas-02.jpg"),
          CardImage("assets/img/bahamas-03.jpg"),
          CardImage("assets/img/bahamas-04.jpg"),
        ],
      ),
    );
  }
}
