import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/data/models/user_list_model.dart';
import 'package:chatapp/modules/user_list/domain/repositories/user_list_data_source.dart';
import 'package:chatapp/modules/user_list/domain/repositories/user_list_repository.dart';

class UserListDataRepository extends UserListRepository{
  final UserListDataSource userListDataSource;
  UserListDataRepository({required this.userListDataSource});

  @override
  Future<List<UserEntity>?> getSearchedUsersList() {
    // TODO: implement getSearchedUsersList
    throw UnimplementedError();
  }

  @override
  Future<List<UserEntity>?> getUsersList() async{
  UserListModel? userList = await userListDataSource.getUsersList();
  return userList!.data;
  }

}