import 'package:chatapp/modules/user_list/data/repositories/user_list_data_repository.dart';
import 'package:get/get.dart';

import '../../domain/repositories/user_list_data_source.dart';

class UserListController extends GetxController{
  final UserListDataRepository userListRepository;
    UserListController({required this.userListRepository});
}