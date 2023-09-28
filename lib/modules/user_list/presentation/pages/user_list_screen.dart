import 'package:chatapp/utils/sizes_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text.dart';
import '../widgets/user_card_widget.dart';

class UserListScreen extends GetView<UserListScreen> {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText("Contacts"),
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) => const UserCard(),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 10,
        ),
      ).paddingSymmetric(horizontal: Dimens.margin),
    );
  }
}


