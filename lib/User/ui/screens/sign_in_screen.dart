import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/bloc/bloc_user.dart';
import 'package:flutter_application_1/platzi_trips_cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../../../widgets/gradient_back.dart';
import '../../../widgets/button_green.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late UserBloc _userBloc;

  @override
  Widget build(BuildContext context) {
    _userBloc = BlocProvider.of(context);

    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: _userBloc.authStatus,
      builder: ((BuildContext context, AsyncSnapshot snapshot) {
        //  snapshot - data - Object User
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return PlatziTripsCupertino();
        }
      }),
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack('', null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome \n This is your Travel App',
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 37.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  _userBloc
                      .signIn()
                      .then((user) =>
                          // ignore: avoid_print
                          print("El usuario es ${user.user?.displayName}"))
                      // ignore: avoid_print
                      .catchError((error) => print('Error'));
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
