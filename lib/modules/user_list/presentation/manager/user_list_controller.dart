import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/data/repositories/user_list_data_repository.dart';
import 'package:chatapp/modules/user_list/domain/use_cases/user_list_use_case.dart';
import 'package:get/get.dart';
class UserListController extends GetxController {


  final UserListDataRepository userListRepository;
    UserListController({required this.userListRepository});


  Future<List<UserEntity>?> getSearchedUsersList() {
    // TODO: implement getSearchedUsersList
    throw UnimplementedError();
  }


  Future<List<UserEntity>?> getUsersList() {
  return UserListUseCase(repository: userListRepository).getUserList();
  }
}