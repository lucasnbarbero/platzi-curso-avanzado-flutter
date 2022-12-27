import 'package:flutter/material.dart';
import "review_user_name.dart";
import "review_user_info.dart";
import "review_user_comment.dart";

class ReviewUserDetail extends StatelessWidget {
  String username;
  String info;
  String comment;

  ReviewUserDetail(this.username, this.info, this.comment, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ReviewUserName(username),
        ReviewUserInfo(info),
        ReviewUserComment(comment)
      ],
    );
  }
}
