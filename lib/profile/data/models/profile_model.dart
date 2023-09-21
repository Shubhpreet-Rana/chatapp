// Data Layer (profile_model.dart)

import 'package:chatapp/authentication/domain/entities/user_entity.dart';
import 'package:chatapp/profile/domain/entities/profile_entity.dart';

import '../../../authentication/data/models/user_model.dart';

class ProfileModel {
  final UserModel user; // Include UserModel
  final String additionalProfileInfo;

  ProfileModel({
    required this.user,
    required this.additionalProfileInfo,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      user: UserModel.fromJson(json), // Deserialize UserModel
      additionalProfileInfo: json['additionalProfileInfo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(), // Serialize UserModel
      'additionalProfileInfo': additionalProfileInfo,
    };
  }

  toEntity(){
    return ProfileEntity(user: UserEntity( username: "username", email: "email", id: ''), additionalProfileInfo: additionalProfileInfo);
  }
}
