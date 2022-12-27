import 'package:flutter/material.dart';

class ReviewUserName extends StatelessWidget {
  String username;

  ReviewUserName(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        username,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );
  }
}
