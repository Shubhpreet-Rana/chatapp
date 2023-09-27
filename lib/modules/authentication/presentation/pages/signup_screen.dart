// lib/src/authentication/presentation/screens/signup_screen.dart

import 'package:chatapp/utils/app_text.dart';
import 'package:chatapp/utils/routes/app_routes.dart';
import 'package:chatapp/utils/sizes_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/form_fiels.dart';
import '../../domain/entities/user_entity.dart';
import '../controller/authentication_manager.dart';
class SignupScreen extends GetView<AuthenticationController> {

 const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Column(
        children: [
          AppTextFormFields(controller: controller.userNameTextController,hint: "User Name").paddingOnly(bottom: Dimens.paddingMedium),
          AppTextFormFields(controller: controller.emailTextController,hint: "Email").paddingOnly(bottom: Dimens.paddingMedium),
          AppTextFormFields(controller: controller.passwordTextController,hint: "Password").paddingOnly(bottom: Dimens.paddingMedium),

          Center(
            child: ElevatedButton(
              onPressed: controller.signup,
              child: const AppText('Signup'),
            ),
          ),
      Row(
        children: [
          const AppText("Already have an account ?"),
          TextButton(
    style: TextButton.styleFrom(padding: EdgeInsets.zero),
    onPressed: controller.goToSignIn, child: const AppText("SignIn")),
        ],
      )
        ],
      ),
    );
  }
}
