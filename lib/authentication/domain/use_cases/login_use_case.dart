// lib/src/domain/use_cases/login_use_case.dart

import '../entities/user_entity.dart';
import '../repositories/authentication_repositary.dart';

class LoginUseCase {
  final AuthenticationRepository repository;

  LoginUseCase(this.repository);

  Future<UserEntity?> execute(String email, String password) {
    return repository.login(email, password);
  }
}
