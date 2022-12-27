import 'package:flutter/material.dart';

class ReviewUserComment extends StatelessWidget {
  String comment;

  ReviewUserComment(this.comment, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );
  }
}
