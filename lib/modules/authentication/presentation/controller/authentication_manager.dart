import 'package:chatapp/utils/app_toasts/app_toast.dart';
import 'package:chatapp/utils/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../utils/validations.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/authentication_repositary.dart';
import '../../domain/use_cases/login_use_case.dart';
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

  void goToSignUp() {
    Get.offAllNamed(AppRoutes.signupPage);
  }

  void goToSignIn() {
    Get.offAllNamed(AppRoutes.loginPage);
  }

  void forgotPassword() {
    // Get.offAllNamed(AppRoutes.loginPage);
    AppToast.notice(title: "Notice", message: "Feature is not available ");
  }

  Future<void> login() async {
    Get.closeCurrentSnackbar();
    if (Validations().isEmailValid(emailTextController.text)) {
      if (Validations().isPasswordValid(passwordTextController.text)) {
        UserEntity? userEntity =
            await LoginUseCase(repository: authenticationRepository)
                .execute(emailTextController.text, passwordTextController.text);
        if (userEntity is UserEntity) {
          Get.offAllNamed(AppRoutes.userListPage);
        }
      }
    }
  }

  Future<UserEntity?> signup() async {
    Get.closeCurrentSnackbar();
    if (Validations().isEmailValid(emailTextController.text)) {
      if (Validations().isPasswordValid(passwordTextController.text)) {
        return RegisterUserCase(repository: authenticationRepository).execute(
            username: userNameTextController.text,
            email: emailTextController.text,
            password: passwordTextController.text);
      }
    }
    return null;
  }

  Future<bool> exists(String username, String email) async {
    if (Validations().isEmailValid(emailTextController.text)) {
      return authenticationRepository.exists(username, email);
    }
    return false;
  }

  @override
  void dispose() {
    emailTextController.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }
}
