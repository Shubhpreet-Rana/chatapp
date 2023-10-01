import 'package:chatapp/modules/authentication/domain/entities/user_entity.dart';
import '../../../authentication/data/models/user_model.dart';

class UserListModel {
  bool? status;
  String? message;
  List<UserEntity>? data;

  UserListModel({this.status, this.message, this.data});

  UserListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <UserEntity>[];
      json['data'].forEach((v) {
        data!.add( UserModel.toEntityFromJson(v).toEntity()!);
      });
    }
  }

}
