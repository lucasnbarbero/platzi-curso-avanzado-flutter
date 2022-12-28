import 'package:flutter/material.dart';
import '../../../widgets/gradient_back.dart';
import '../../../widgets/button_green.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
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
              ButtonGreen(50.0, 300.0,
                  text: 'Login with Gmail', onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
