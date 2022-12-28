import 'package:flutter/material.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          CircleButton(const Color.fromRGBO(255, 255, 255, 1),
              Icons.turned_in_not, 20.0, true),
          CircleButton(const Color.fromRGBO(255, 255, 255, 0.6),
              Icons.card_travel, 20.0, true),
          CircleButton(
              const Color.fromRGBO(255, 255, 255, 1), Icons.add, 40.0, false),
          CircleButton(const Color.fromRGBO(255, 255, 255, 0.6),
              Icons.mail_outline, 20.0, true),
          CircleButton(const Color.fromRGBO(255, 255, 255, 0.6), Icons.person,
              20.0, true),
        ],
      ),
    );
  }
}
