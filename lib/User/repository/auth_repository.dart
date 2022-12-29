import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<dynamic> signInFirebase() => _firebaseAuthAPI.signInWithGoogle();

  singOut() => _firebaseAuthAPI.signOut();
}
