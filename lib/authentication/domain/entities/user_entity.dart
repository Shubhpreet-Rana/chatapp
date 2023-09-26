// lib/src/authentication/domain/entities/user_entity.dart

import 'package:chatapp/authentication/domain/entities/abstract_user_entity.dart';

class UserEntity extends UserDomainEntity{
  final String id;
  final String username;
  final String email;

  UserEntity({
    required this.id,
    required this.username,
    required this.email,
  });

}
