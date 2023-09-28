import '../../data/models/user_list_model.dart';

abstract class UserListDataSource{
  Future<UserListModel?> getSearchedUsersList() ;
  Future<UserListModel?> getUsersList() ;
}