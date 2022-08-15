import 'package:flutter/material.dart';

class UserModel {
  String? uid;
  String? imageUrl;
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  String? phoneNumber;

  UserModel({this.uid, this.imageUrl, this.name, this.email, this.password, this.confirmPassword, this.phoneNumber});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      imageUrl: map['imageUrl'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      confirmPassword: map['confirmPassword'],
      phoneNumber: map['phoneNumber'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'imageUrl': imageUrl,
      'name': name,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'phoneNumber': phoneNumber,
      
    };
  }
}
