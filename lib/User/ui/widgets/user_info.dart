import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/model/user.dart';

class UserInfo extends StatelessWidget {
  User user;

  UserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
      width: 90.0,
      height: 90.0,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(user.photo))),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            user.name,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          user.email,
          style: const TextStyle(
              fontSize: 15.0, color: Colors.white30, fontFamily: "Lato"),
        )
      ],
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
      child: Row(
        children: <Widget>[userPhoto, userInfo],
      ),
    );
  }
}
