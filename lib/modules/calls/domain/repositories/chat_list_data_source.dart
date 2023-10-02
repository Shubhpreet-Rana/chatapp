import '../../data/models/user_list_model.dart';

abstract class ChatListDataSource{
  Future<UserListModel?> oneToOneChat() ;
  Future<UserListModel?> groupChat() ;
}