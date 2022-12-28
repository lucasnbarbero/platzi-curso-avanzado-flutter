import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'User/bloc/bloc_user.dart';
import 'User/ui/screens/sign_in_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: UserBloc(),
        child: const MaterialApp(title: 'Flutter Demo', home: SignInScreen()));
  }
}
