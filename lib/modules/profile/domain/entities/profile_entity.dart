// lib/src/profile/domain/entities/profile_entity.dart


import '../../../authentication/domain/entities/user_entity.dart';

class ProfileEntity {
  final UserEntity user;
  final String additionalProfileInfo;

  ProfileEntity({
    required this.user,
    required this.additionalProfileInfo,
  });


}
