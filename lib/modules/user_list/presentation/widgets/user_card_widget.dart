import 'package:chatapp/modules/user_list/presentation/manager/user_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text.dart';
import '../../../../utils/sizes_config.dart';

class UserCard extends GetView<UserListController> {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      child: ListTile(
        title: const AppText("User Name", ),
        subtitle: const AppText.small(
          "This is content for Message Appeared In The Chat",
          maxLines: 1,
        ),
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        trailing: Card(
          elevation: 0,
          color: Colors.red.shade900,
          child:  const AppText.extraSmall("200",color: Colors.white).paddingSymmetric(
              vertical: Dimens.paddingExtraSmall,
              horizontal: Dimens.paddingSmall),
        ),
      ),
    );
  }
}