import 'package:flutter/material.dart';

class ReviewUserInfo extends StatelessWidget {
  String info;

  ReviewUserInfo(this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        info,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );
  }
}
