import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result;
    } catch (error) {
      throw error;
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result;
    } catch (error) {
      throw error;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  User? getCurrentUser() {
    User? user = _auth.currentUser;
    return user;
  }

  bool isLoggedIn() {
    User? user = _auth.currentUser;
    return user != null;
  }
}
