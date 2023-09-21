// lib/src/authentication/presentation/managers/authentication_manager.dart

import 'package:get/get.dart';

import '../../data/repositories/authentication_data_repositary.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repositary.dart';

class AuthenticationController extends GetxController {
  final AuthenticationRepository authenticationRepository;

  AuthenticationController({required this.authenticationRepository});

  Future<UserEntity?> login(String email, String password) async {
    return authenticationRepository.login(email, password);
  }

  Future<UserEntity?> signup(String username, String email, String password) async {
    return authenticationRepository.signup(username, email, password);
  }

  Future<bool> exists(String username, String email) async {
    return authenticationRepository.exists(username, email);
  }
}
