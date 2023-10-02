import 'package:chatapp/modules/user_list/data/data_sources/chats_list_data_source_firebase.dart';
import 'package:chatapp/modules/user_list/data/data_sources/user_list_data_source_firebase.dart';
import 'package:chatapp/modules/user_list/data/repositories/chat_list_data_repository.dart';
import 'package:chatapp/modules/user_list/data/repositories/user_list_data_repository.dart';
import 'package:chatapp/modules/user_list/presentation/manager/user_list_controller.dart';
import 'package:get/get.dart';

class UserListBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      UserListController(
        userListRepository: UserListDataRepository(
          userListDataSource: UserListDataSourceFirebase(),
        ),
        chatListRepository: ChatListDataRepository(
            chatListDataSource: ChatListDataSourceFirebase()),
      ),
    );
  }
}
