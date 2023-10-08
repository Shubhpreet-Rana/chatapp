import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/presentation/manager/user_list_controller.dart';
import 'package:chatapp/modules/user_list/presentation/widgets/users_card_widget.dart';
import 'package:chatapp/utils/sizes_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/app_search_bar.dart';
import '../../../../utils/app_text.dart';
class SearchUserScreen extends GetView<UserListController> {
  const SearchUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          AppSearchBar(hint: "Search User", searchController: controller.searchUserTextEditingController,onChanged: controller.onChange,onTap: (){},),
          Expanded(
            child: GetBuilder(
              id: "search_users",
              init: controller,
              builder: (context) {
                return  controller.searchUserTextEditingController.text.trim().isEmpty?
                 const Center(child: AppText("Search user to start a conversation")):
                 FutureBuilder<List<UserEntity>?>(
                    future: controller.searchUsersList(),
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
                            UserCart(userEntity: snapshot.data![index]),
                        separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                          height: 10,
                        ),
                      ).paddingSymmetric(horizontal: Dimens.margin);
                    });
              }
            ),
          ),
        ],
      ),
    );
  }
}
