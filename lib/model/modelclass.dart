import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? uid;
  final String? name;
  final String? email;
  final String? password;

  const UserModel({
    this.uid,
     this.name,
     this.email,
    this.password,
  });

  factory UserModel.fromJson(DocumentSnapshot data) {
    return UserModel(
      name: data['name'],
      email: data['email'],
      uid: data['uid'],
    );
  }

  Map<String,dynamic> toJson() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
       "password": password,
    };
  }

  toMap() {}
}
