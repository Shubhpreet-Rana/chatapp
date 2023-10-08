import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';

abstract class UserListRepository{
  Future<List<UserEntity>?> getUsersList();
  Future<List<UserEntity>?> getSearchedUsersList({required String search});
}