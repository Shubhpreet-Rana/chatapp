import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/presentation/manager/user_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text.dart';
import '../../../../utils/sizes_config.dart';

class UserCart extends GetView<UserListController> {
  const UserCart({super.key, required this.userEntity });

  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {

    return Card(
      shape: const StadiumBorder(),
      child: ListTile(
        title:  AppText(userEntity.username, ),
        subtitle: const AppText.small(
          "Rejected",
          maxLines: 1,
        ),

        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        trailing: Icon(Icons.call_missed,color: Colors.red,)
      ),
    );
  }
}