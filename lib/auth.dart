import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  get errorCode => null;

  Future<User?> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  signOut() async {
    return await _auth.signOut();
  }

  Future<User?> createAccount(
      String name, String email, String password) async {
    if (errorCode == "auth/email-already-in-use") {
      alert("Email already in use");
    }
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore
        .collection("Account")
        .doc(user.user!.uid)
        .set({'userName': name, 'email': email});

    return user.user;
  }

  void alert(String s) {}
}
