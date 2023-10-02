import 'package:chatapp/main.dart';
import 'package:chatapp/modules/user_list/data/models/user_list_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../domain/repositories/chat_list_data_source.dart';

class ChatListDataSourceFirebase implements ChatListDataSource {
  CollectionReference users = FirebaseFirestore.instance.collection('users');


  @override
  Future<UserListModel?> oneToOneChat() async {
    try {
      DocumentSnapshot documentSnapshot = await users.doc(userid).get();
      //User List Is Empty
      if (!documentSnapshot.exists) {
        return UserListModel(status: false, message: "No Data Found" ,data: []);
      }
      var data = documentSnapshot.data() as Map<String, dynamic>;
      //User List Exist
      var chats = data['one_to_one'];
      if(chats == null){
        //Fixme: not active chat
      }
      if(chats is List<dynamic> && chats.isNotEmpty){
        chats.forEach(( value) async {
          DocumentReference docu = value;
          await docu.get().then((value) =>  debugPrint("DatDAtdTAD ${value.reference.id} ${ value.data()  as Map<String, dynamic>}"));
        });
       //Fixme: Convert to list using map for each item one by one
      }
      return null;
      // if (documentSnapshot.) {
      //   List<Map<String, dynamic>> userList = querySnapshot.docs
      //       .map((value) => value.data() as Map<String, dynamic>)
      //       .toList();
      //   //User Logged In
      //   if (userList.isNotEmpty) {
      //     Map<String, dynamic> mapData = {
      //       "status": true,
      //       "message": "User List Found",
      //       "data": userList
      //     };
      //     debugPrint(mapData['data'].toString());
      //     UserListModel userData = UserListModel.fromJson(mapData);
      //     return userData;
      //   }
      // }
      // Something went Wrong
      return UserListModel(status: false, message: "Something Went Wrong",data: []);
    } catch (e, st) {
      debugPrint("User List Error  $e");
      debugPrint("User List Error  $st");
      return null;
    }
  }

  @override
  Future<UserListModel?> groupChat() {
    // TODO: implement groupChat
    throw UnimplementedError();
  }
}
