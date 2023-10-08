import '../../data/models/user_list_model.dart';

abstract class UserListDataSource{
  Future<UserListModel?> getSearchedUsersList({required String search}) ;
  Future<UserListModel?> getUsersList() ;
}