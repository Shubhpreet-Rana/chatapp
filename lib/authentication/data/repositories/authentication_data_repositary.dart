// lib/src/authentication/data/repositories/authentication_data_repository.dart

import 'package:chatapp/authentication/data/data_sources/firebase/authentication_data_source.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repositary.dart';

class AuthenticationDataRepository implements AuthenticationRepository {
  final AuthenticationDataSourceFirebase authenticationDataSource;

  AuthenticationDataRepository({required this.authenticationDataSource});

  @override
  Future<UserEntity?> login(String username, String password) async {
    final userModel = await authenticationDataSource.loginUser(username, password);
    return userModel?.toEntity();
  }

  @override
  Future<UserEntity?> signup(String username, String email, String password) async {
    final userModel = await authenticationDataSource.signupUser(username, email, password);
    return userModel?.toEntity();
  }

  @override
  Future<bool> exists(String username, String email) async {
    final userModel = await authenticationDataSource.exists(username, email);
    return userModel;
  }
}
