import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/data/repositories/user_list_data_repository.dart';
import 'package:chatapp/modules/user_list/domain/use_cases/user_list_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/repositories/chat_list_data_repository.dart';
class UserListController extends GetxController {

final TextEditingController searchUserTextEditingController = TextEditingController();
  final UserListDataRepository userListRepository;
  final ChatListDataRepository  chatListRepository;
    UserListController({required this.userListRepository, required  this.chatListRepository});


  @override
  void onInit() {
    chatListRepository.oneToOneChat();
    chatListRepository.groupChat();
  }

  void onChange(value){
    update(["search_users"]);
  }


  Future<List<UserEntity>?> searchUsersList() {
   return UserListUseCase(repository: userListRepository).getSearchedUsersList(search: searchUserTextEditingController.text);
  }


  Future<List<UserEntity>?> getUsersList() {
  return UserListUseCase(repository: userListRepository).getUserList();
  }
}