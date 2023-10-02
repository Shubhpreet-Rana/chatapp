import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/modules/user_list/data/models/user_list_model.dart';
import 'package:chatapp/modules/user_list/domain/repositories/user_list_data_source.dart';
import 'package:chatapp/modules/user_list/domain/repositories/user_list_repository.dart';

import '../../domain/repositories/chat_list_data_source.dart';
import '../../domain/repositories/chat_list_repository.dart';

class ChatListDataRepository extends ChatListRepository{
  final ChatListDataSource chatListDataSource;
  ChatListDataRepository({required this.chatListDataSource});


  @override
  Future<List<UserEntity>?> groupChat() async{
    await chatListDataSource.groupChat();
    return null;
  }

  @override
  Future<List<UserEntity>?> oneToOneChat() async{
    await chatListDataSource.oneToOneChat();
    return null;
  }

}