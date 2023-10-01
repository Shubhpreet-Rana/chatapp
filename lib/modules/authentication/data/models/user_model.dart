// Data Layer (user_model.dart)

import 'package:flutter/cupertino.dart';

import '../../domain/entities/user_entity.dart';

class UserModel {
  bool? status;
  String? message;
  Data? data;

  UserModel({this.status, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    debugPrint("Show User Model $json");
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  UserModel.toEntityFromJson(Map<String,dynamic> json){
    data = json != null ?Data.fromJson(json) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }

  UserEntity? toEntity() {
    debugPrint("User Info "+data.toString());
    return data != null
        ? UserEntity(
            id: data!.id ?? "",
            username: data!.username ?? "",
            email: data!.email ?? "")
        : null;
  }

  @override
  String toString() {
    return 'UserModel{status: $status, message: $message, data: $data}';
  }
}

class Data {
  String? id;
  String? username;
  String? email;

  Data({this.id, this.username, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    return data;
  }

  @override
  String toString() {
    return 'Data{id: $id, username: $username, email: $email}';
  }
}
