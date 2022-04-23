import 'package:airplane/models/user_model.dart';
import 'package:airplane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  // buat instance firebase
  FirebaseAuth _auth = FirebaseAuth.instance;

  // Dalam future ini sama seperti akan melakukan register
  // dibuat instance dari UserModel
  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      // **Register kedalam authentication
      // membuat email dan pass
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // membuat objek user
      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          balance: 280000000,
          hobby: hobby);

      // **Register ke dalam firestore
      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> singOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
