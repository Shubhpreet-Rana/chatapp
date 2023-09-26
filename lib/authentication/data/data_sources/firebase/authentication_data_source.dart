// Data Layer (authentication/data_sources/profile_data_source.dart)

import 'dart:core';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../models/user_model.dart';

class AuthenticationDataSourceFirebase {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<UserModel?> loginUser(
      {required String email, required String password}) async {
    bool hasUser = false;

    try {
      hasUser = await exists(username: "", email: email);
      //Email Doesn't Exist
      if (!hasUser) {
        return UserModel(status: false, message: "User Email Does Not Exist");
      }
      //Email Exist
      QuerySnapshot querySnapshot =
          await users.where("password", isEqualTo: password).get();
      //Password Not Exist
      if (querySnapshot.docs.isEmpty) {
        return UserModel(status: false, message: "Invalid Password");
      }
      //Password Exist
      if (querySnapshot.docs.isNotEmpty) {
        QueryDocumentSnapshot queryDocumentSnapshot = querySnapshot.docs.first;
        Map<String, dynamic> data =
            (queryDocumentSnapshot.data() ?? {}) as Map<String, dynamic>;
        if (data.isNotEmpty) {
          Map<String, dynamic> mapData = {
            "status": true,
            "message": "Login Successfully",
            "data": data
          };
          UserModel userData = UserModel.fromJson(mapData);
          return userData;
        }
      }
      // Something went Wrong
      return UserModel(status: false, message: "Something Went Wrong");
    } catch (e, st) {
      debugPrint("Signup Error  $e");
      debugPrint("Signup Error  $st");
      return null;
    }
  }

  Future<UserModel?> signupUser(
      {required String username,
      required String email,
      required String password}) async {
    final String userId = users.doc().id;
    bool hasUser = false;
    // Create a map with the user data
    final Map<String, dynamic> userData = {
      'id': userId,
      'username': username,
      'email': email,
      'password': password,
      // Add other user data fields as needed
    };
    try {
      hasUser = await exists(username: username, email: email);

      //User Already Exist
      if (hasUser) {
        return UserModel(status: false, message: "User Already Exist");
      }

      //User Doesn't Exist
      if (!hasUser) {
        await users.doc(userId).set(userData);
        hasUser = await exists(username: username, email: email);
        //User Added
        if (hasUser) {
          return UserModel(status: false, message: "User Added");
        }
        //User Not Added
        if (!hasUser) {
          return UserModel(status: false, message: "User Not Added");
        }
      }
      //Something Went Wrong
      return UserModel(status: false, message: "Something Went Wrong");
    } catch (e, st) {
      debugPrint("Signup Error  $e");
      debugPrint("Signup Error  $st");
      return null;
    }
  }

  Future<bool> exists({required String username, required String email}) async {
    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: email).get();
    if (querySnapshot.docs.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
