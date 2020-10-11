import 'package:firebase_auth/firebase_auth.dart';
import 'package:ComCon/models/user.dart';
import 'package:ComCon/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  Customer _userFromFirebaseUser(User user) {
    return user != null ? Customer(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<Customer> get user {
    return _auth
        .authStateChanges()
        //.map((User user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } on FirebaseAuthException catch (error) {
      return null;
    } catch (error) {
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      await DatabaseService(uid: user.uid).updateUserData('krishanu','sedan', 'fiesta', 'red', 'HR 1011', 9455322314, 2018006625, 'Btech CSE');
      return _userFromFirebaseUser(user);
    } catch (error) {
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      return null;
    }
  }
}
