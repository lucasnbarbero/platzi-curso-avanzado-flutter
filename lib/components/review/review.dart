import "package:flutter/material.dart";
import "review_user_photo.dart";
import "review_user_detail.dart";

class Review extends StatelessWidget {
  String pathImage;
  String username;
  String info;
  String comment;

  Review(this.pathImage, this.username, this.info, this.comment, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ReviewUserPhoto(pathImage),
        ReviewUserDetail(username, info, comment)
      ],
    );
  }
}
