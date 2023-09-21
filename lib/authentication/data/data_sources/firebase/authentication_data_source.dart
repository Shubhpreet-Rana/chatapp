// Data Layer (authentication/data_sources/profile_data_source.dart)

import 'dart:convert';
import 'dart:core';
import 'package:chatapp/utils/button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/user_model.dart';

class AuthenticationDataSourceFirebase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<UserModel?> loginUser(String email, String password) async {
    final String userId = users.doc().id;
    bool hasUser = false;

    try {
      hasUser = await exists("", email);
      if (!hasUser) {
        Get.showSnackbar(const GetSnackBar(
          message: "User Email Does Not Exist",
          title: "Login",
          duration: Duration(seconds: 2),
        ));
      } else {
        QuerySnapshot querySnapshot =
            await users.where("password", isEqualTo: password).get();
        if(querySnapshot.docs.isNotEmpty){
          QueryDocumentSnapshot queryDocumentSnapshot = querySnapshot.docs.first;
          Map<String, dynamic> data = (queryDocumentSnapshot.data()??{}) as Map<String, dynamic>;
        if(data.isNotEmpty) {
          UserModel userData = UserModel.fromJson(data);
          Get.showSnackbar(const GetSnackBar(
            message: "Login Successfully",
            title: "Login",
            duration: Duration(seconds: 2),
            icon: Icon(Icons.check, color: Colors.green,),
            shouldIconPulse: true,
          ));
          return userData;
        }else{
          Get.showSnackbar(const GetSnackBar(
            message: "No Data Found",
            title: "Login",
            duration: Duration(seconds: 2),
          ));
        }

        }else{
          Get.showSnackbar(const GetSnackBar(
            message: "Invalid Password",
            title: "Login",
            duration: Duration(seconds: 2),
          ));
        }
      }
    } catch (e, st) {
      debugPrint("Signup Error  $e");
      debugPrint("Signup Error  $st");
    }
  }

  Future<UserModel?> signupUser(
      String username, String email, String password) async {
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
      hasUser = await exists(username, email);
      if (!hasUser) {
        await users.doc(userId).set(userData);
        hasUser = await exists(username, email);
        if (hasUser) {
          Get.showSnackbar(const GetSnackBar(
            message: "User Added",
            title: "Registration",
            duration: Duration(seconds: 2),
          ));
        } else {
          Get.showSnackbar(const GetSnackBar(
            message: "Something Went Wrong",
            title: "Registration",
            duration: Duration(seconds: 2),
          ));
        }
      } else {
        Get.showSnackbar(const GetSnackBar(
          message: "User Already Exist",
          title: "Registration",
          duration: Duration(seconds: 2),
        ));
      }
      await exists(username, email);
    } catch (e, st) {
      debugPrint("Signup Error  $e");
    }
  }

  Future<bool> exists(String username, String email) async {
    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: email).get();
    if (querySnapshot.docs.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
