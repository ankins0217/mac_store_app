import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> registerNewUser(
    String email,
    String fullName,
    String password,
  ) async {
    String res = "Something went wrong!";
    try {
      // we want to create the user in the authentication tab and then later in firebase store
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      await _firestore.collection('buyers').doc(userCredential.user!.uid).set({
        'fullName': fullName,
        'profileIImage': "",
        'email': email,
        'uid': userCredential.user!.uid,
        'pinCode': "",
        'locality': "",
        'city': "",
        'state': "",
      });

      res = "Success";
    } catch (e) {}
    return res;
  }
}
