import 'package:flutter/material.dart';
import 'package:flutter_application_1/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          //  Cambiar la contraseña
          CircleButton(
            const Color.fromRGBO(255, 255, 255, 0.6),
            Icons.vpn_key,
            20.0,
            true,
            onPressed: () => {},
          ),

          //  Nuevo lugar
          CircleButton(
            const Color.fromRGBO(255, 255, 255, 1),
            Icons.add,
            40.0,
            false,
            onPressed: () => {},
          ),

          //  Cerrar sesion
          CircleButton(
            const Color.fromRGBO(255, 255, 255, 0.6),
            Icons.exit_to_app,
            20.0,
            true,
            onPressed: () => {userBloc.signOut()},
          ),
        ],
      ),
    );
  }
}
