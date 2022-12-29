import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/bloc/bloc_user.dart';
import 'package:flutter_application_1/User/model/user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../widgets/user_info.dart';
import '../widgets/button_bar.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;
  late User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.done:
            return showProfileData(snapshot);
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      return Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: const <Widget>[
            CircularProgressIndicator(),
            Text('No se pudo cargar la información. Haz login'),
          ],
        ),
      );
    } else {
      print(snapshot.data);
      user = User(
          snapshot.data.email, snapshot.data.displayName, snapshot.data.photoURL);
      final title = Text(
        'Profile',
        style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
        ),
      );
      return Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(user: user),
            ButtonsBar()
          ],
        ),
      );
    }
  }
}
