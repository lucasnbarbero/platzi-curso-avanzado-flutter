import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../repository/auth_repository.dart';

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  //  Flujo de datos - STREAMS
  //  Stream - Firebase
  //  StreamController
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  //  Casos de uso
  //  1.  Sign in a la aplicación Google
  Future<dynamic> signIn() {
    return authRepository.signInFirebase();
  }

  //  2 Sign out del usuario
  signOut() {
    authRepository.singOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
