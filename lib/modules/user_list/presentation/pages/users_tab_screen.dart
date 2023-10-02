import 'package:chatapp/modules/user_list/presentation/pages/user_list_screen.dart';
import 'package:chatapp/utils/app_text.dart';
import 'package:flutter/material.dart';

import '../../../calls/presentation/pages/calls_list_screen.dart';

class UserHomeTab extends StatelessWidget {
  const UserHomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FilledButton(onPressed: (){},child: Icon(Icons.chat),),
          appBar: AppBar(
            title: TabBar(
              tabs: [
                AppText("Chats"),
                AppText("Groups"),
                AppText("Calls"),
              ],
            ),
          ),
          body: TabBarView(
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
