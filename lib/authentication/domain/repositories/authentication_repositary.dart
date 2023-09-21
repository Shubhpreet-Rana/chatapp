// lib/src/authentication/domain/repositories/authentication_repository.dart

import '../entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<UserEntity?> login(String email, String password);
  Future<UserEntity?> signup(String username, String email, String password);
  Future<bool> exists(String username, String email);
}
