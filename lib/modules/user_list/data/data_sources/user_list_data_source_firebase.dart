import 'package:chatapp/modules/user_list/data/models/user_list_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../domain/repositories/user_list_data_source.dart';

class UserListDataSourceFirebase implements UserListDataSource {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Future<UserListModel?> getSearchedUsersList({required String search}) async{
    try {
      QuerySnapshot querySnapshot = await users.where("username" , isEqualTo: search).get();
      //User List Is Empty
      if (querySnapshot.docs.isEmpty) {
        return UserListModel(status: false, message: "No Data Found" ,data: []);
      }
      //User List Exist
      if (querySnapshot.docs.isNotEmpty) {
        List<Map<String, dynamic>> userList = querySnapshot.docs
            .map((value) => value.data() as Map<String, dynamic>)
            .toList();
        //User Logged In
        if (userList.isNotEmpty) {
          Map<String, dynamic> mapData = {
            "status": true,
            "message": "User List Found",
            "data": userList
          };
          debugPrint(mapData['data'].toString());
          UserListModel userData = UserListModel.fromJson(mapData);
          return userData;
        }
      }
      // Something went Wrong
      return UserListModel(status: false, message: "Something Went Wrong",data: []);
    } catch (e, st) {
      debugPrint("User List Error  $e");
      debugPrint("User List Error  $st");
      return null;
    }
  }

  @override
  Future<UserListModel?> getUsersList() async {
    try {
      QuerySnapshot querySnapshot = await users.get();
      //User List Is Empty
      if (querySnapshot.docs.isEmpty) {
        return UserListModel(status: false, message: "No Data Found" ,data: []);
      }
      //User List Exist
      if (querySnapshot.docs.isNotEmpty) {
        List<Map<String, dynamic>> userList = querySnapshot.docs
            .map((value) => value.data() as Map<String, dynamic>)
            .toList();
        //User Logged In
        if (userList.isNotEmpty) {
          Map<String, dynamic> mapData = {
            "status": true,
            "message": "User List Found",
            "data": userList
          };
          debugPrint(mapData['data'].toString());
          UserListModel userData = UserListModel.fromJson(mapData);
          return userData;
        }
      }
      // Something went Wrong
      return UserListModel(status: false, message: "Something Went Wrong",data: []);
    } catch (e, st) {
      debugPrint("User List Error  $e");
      debugPrint("User List Error  $st");
      return null;
    }
  }
}
