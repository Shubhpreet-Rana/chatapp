import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';

abstract class ChatListRepository{
  Future<List<UserEntity>?> oneToOneChat();
  Future<List<UserEntity>?> groupChat();
}