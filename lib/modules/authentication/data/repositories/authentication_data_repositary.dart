// lib/src/authentication/data/repositories/authentication_data_repository.dart

import 'package:chatapp/utils/app_toasts/api_toast.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repositary.dart';
import '../data_sources/firebase/authentication_data_source.dart';

class AuthenticationDataRepository implements AuthenticationRepository {
  final AuthenticationDataSourceFirebase authenticationDataSource;

  AuthenticationDataRepository({required this.authenticationDataSource});

  @override
  Future<UserEntity?> login(String email, String password) async {
    final userModel = await authenticationDataSource.loginUser(email: email, password:password);
    ApiToast().showToast(data: userModel, title: "Login");
    return userModel?.toEntity();
  }

  @override
  Future<UserEntity?> signup(String username, String email, String password) async {
    final userModel = await authenticationDataSource.signupUser(username: username, email:email, password:password);
    ApiToast().showToast(data: userModel, title: "Register");
    return userModel?.toEntity();
  }

  @override
  Future<bool> exists(String username, String email) async {
    final userModel = await authenticationDataSource.exists(username:username, email:email);
    return userModel;
  }
}
