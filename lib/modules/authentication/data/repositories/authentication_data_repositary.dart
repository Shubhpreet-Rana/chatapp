// lib/src/authentication/data/repositories/authentication_data_repository.dart

import 'package:chatapp/utils/app_toasts/api_toast.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_data_source.dart';
import '../../domain/repositories/authentication_repositary.dart';

class AuthenticationDataRepository implements AuthenticationRepository {
  final AuthenticationDataSource authenticationDataSource;

  AuthenticationDataRepository({required this.authenticationDataSource});

  @override
  Future<UserEntity?> login(String email, String password) async {
    const String title = "Login";
    final userModel = await authenticationDataSource.loginUser(
        email: email, password: password);
    if (userModel!.status == true) {
      ApiToast.success(title: title, message: userModel.message.toString());
    } else {
      ApiToast.error(title: title, message: userModel.message.toString());
    }
    return userModel.toEntity();
  }

  @override
  Future<UserEntity?> signup(
      String username, String email, String password) async {
    const String title = "Register";
    final userModel = await authenticationDataSource.signupUser(
        username: username, email: email, password: password);
    if (userModel!.status == true) {
      ApiToast.success(title: title, message: userModel.message.toString());
    } else {
      ApiToast.error(title: title, message: userModel.message.toString());
    }
    return userModel.toEntity();
  }

  @override
  Future<bool> exists(String username, String email) async {
    final userModel =
        await authenticationDataSource.exists(username: username, email: email);
    return userModel;
  }
}
