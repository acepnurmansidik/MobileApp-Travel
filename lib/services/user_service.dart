import 'package:airplane/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  // menambahkan collection user
  // init collection dari firestore yang telah dibuat
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  // set date ke dalam firestore
  Future<void> setUser(UserModel user) async {
    try {
      // siapkan datanya dari user(UserModel)
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance
      });
    } catch (e) {
      throw e;
    }
  }
}
