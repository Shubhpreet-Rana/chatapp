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
        return UserListModel(status: false, message: "No Data Found", data: []);
      }
      var data = documentSnapshot.data() as Map<String, dynamic>;
      //User List Exist
      var chats = data['one_to_one'];
      if (chats == null) {
        //Fixme: not active chat
      }
      if (chats is List<dynamic> && chats.isNotEmpty) {
        List<DocumentReference> data =
            chats.map((e) => e as DocumentReference).toList();
        debugPrint("Chats Group $data");
        data.forEach((element) {getChatInfo(element);});
        //Fixme: Convert to list using map for each item one by one
      }
      return null;
      // Something went Wrong
      return UserListModel(
          status: false, message: "Something Went Wrong", data: []);
    } catch (e, st) {
      debugPrint("User List Error  $e");
      debugPrint("User List Error  $st");
      return null;
    }
  }

  @override
  Future<UserListModel?> groupChat() async {
    try {
      DocumentSnapshot documentSnapshot = await users.doc(userid).get();
      //User List Is Empty
      if (!documentSnapshot.exists) {
        return UserListModel(status: false, message: "No Data Found", data: []);
      }
      var data = documentSnapshot.data() as Map<String, dynamic>;
      //User List Exist
      var chats = data['group'];
      if (chats == null) {
        //Fixme: not active chat
      }
      if (chats is List<dynamic> && chats.isNotEmpty) {
        List<DocumentReference> data =
            chats.map((e) => e as DocumentReference).toList();
        data.forEach((element) {getChatInfo(element);});
        //Fixme: Convert to list using map for each item one by one
      }
      return null;
      // Something went Wrong
      return UserListModel(
          status: false, message: "Something Went Wrong", data: []);
    } catch (e, st) {
      debugPrint("User List Error  $e");
      debugPrint("User List Error  $st");
      return null;
    }
  }

  getChatInfo(DocumentReference refference) async{
    DocumentSnapshot documentSnapshot = await refference.get();
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic> ;
    debugPrint("Chat INfo :-- $data");
  }
}
