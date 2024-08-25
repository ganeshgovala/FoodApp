import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // instance
  FirebaseAuth _authService = FirebaseAuth.instance;

  // login
  Future<UserCredential> sigin(String email, String password) async {
    final userCredential = await _authService.signInWithEmailAndPassword(
      email: email, 
      password: password
    );
    return userCredential;
  }

  // register
  Future<UserCredential> register(String email, String password) async  {
    final userCredential = await _authService.createUserWithEmailAndPassword(
      email: email, 
      password: password
    );

    return userCredential;
  }

  // logout

  // forgot password
}