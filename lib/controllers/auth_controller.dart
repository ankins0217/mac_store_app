import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> registerNewUser(
    String email,
    String fullName,
    String password,
  ) async {
    String res = "Something went wrong!";
    try {
      // we want to create the user in the authentication tab and then later in firebase store
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      res = "Success";
    } catch (e) {}
    return res;
  }
}
