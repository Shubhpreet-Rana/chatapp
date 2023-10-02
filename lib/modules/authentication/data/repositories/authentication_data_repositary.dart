// lib/src/authentication/data/repositories/authentication_data_repository.dart

import 'package:chatapp/main.dart';

import '../../../../utils/app_toasts/app_toast.dart';
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
      userid = userModel.data!.id??"";
      AppToast.success(title: title, message: userModel.message.toString());
    } else {
      AppToast.error(title: title, message: userModel.message.toString());
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
      AppToast.success(title: title, message: userModel.message.toString());
    } else {
      AppToast.error(title: title, message: userModel.message.toString());
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
