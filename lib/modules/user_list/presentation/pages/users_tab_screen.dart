import 'package:chatapp/modules/user_list/presentation/pages/search_user.dart';
import 'package:chatapp/modules/user_list/presentation/pages/user_list_screen.dart';
import 'package:chatapp/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../calls/presentation/pages/calls_list_screen.dart';

class UserHomeTab extends StatelessWidget {
  const UserHomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FilledButton(
            onPressed: () {

              showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  isScrollControlled: true,
                  useSafeArea: true,
                  constraints: BoxConstraints(minHeight: Get.height),
                  builder: (context) => SearchUserScreen());
            },
            child: const Icon(Icons.chat),
          ),
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                AppText("Chats"),
                AppText("Groups"),
                AppText("Calls"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              UserListScreen(),
              UserListScreen(),
              CallsListScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
