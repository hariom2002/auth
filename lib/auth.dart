import 'package:auth/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '';

final auth = FirebaseAuth.instance;

class Auth extends LoginScreen {
  final String mail;
  final String pass;

  Auth(String this.mail, String this.pass, {super.key});

  void signUpWithEmailAndPassword(String mail, String pass) {
    auth.createUserWithEmailAndPassword(email: mail, password: pass);
  }
}
