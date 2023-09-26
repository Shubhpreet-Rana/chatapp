import 'package:chatapp/authentication/domain/use_cases/login_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repositary.dart';
import '../../domain/use_cases/register_use_case.dart';

class AuthenticationController extends GetxController {
  final AuthenticationRepository authenticationRepository;

  AuthenticationController({required this.authenticationRepository});

  late TextEditingController userNameTextController;
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;


  @override
  void onInit() {
    userNameTextController = TextEditingController();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  Future<UserEntity?> login() async {
    return LoginUseCase(repository: authenticationRepository).execute(emailTextController.text, passwordTextController.text);
  }

  Future<UserEntity?> signup(String username, String email, String password) async {
    return RegisterUserCase(repository: authenticationRepository).execute(username:username, email:email, password:password);
  }

  Future<bool> exists(String username, String email) async {
    return authenticationRepository.exists(username, email);
  }


  @override
  void dispose() {
    emailTextController.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }
}
