import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/presentation/manager/user_list_controller.dart';
import 'package:chatapp/utils/sizes_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/app_text.dart';
import '../widgets/calls_card_widget.dart';

class CallsListScreen extends GetView<UserListController> {
  const CallsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder<List<UserEntity>?>(
          future: controller.getUsersList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return const Center(child: AppText("No Data Found"));
            }
            if (snapshot.data!.isEmpty) {
              return const Center(child: AppText("No Data Found"));
            }
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  CallsCard(userEntity: snapshot.data![index]),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 10,
              ),
            ).paddingSymmetric(horizontal: Dimens.margin);
          }),
    );
  }
}
