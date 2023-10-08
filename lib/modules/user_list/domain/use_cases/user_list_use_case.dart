import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/domain/repositories/user_list_repository.dart';

class UserListUseCase{

  UserListUseCase({required this.repository});

  final UserListRepository repository;

    Future<List<UserEntity>?> getUserList() async{
      return await repository.getUsersList();
    }

    Future<List<UserEntity>?> getSearchedUsersList({required String search}) async{
      return await repository.getSearchedUsersList(search: search);
    }

}