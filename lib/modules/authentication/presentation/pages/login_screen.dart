// lib/src/authentication/presentation/screens/login_screen.dart

import 'package:chatapp/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/form_fiels.dart';
import '../../../../utils/sizes_config.dart';
import '../controller/authentication_manager.dart';
class LoginScreen extends GetView<AuthenticationController> {

  const LoginScreen({super.key, Key? keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextFormFields(controller: controller.emailTextController,hint: "Email").paddingOnly(bottom: Dimens.paddingMedium),
          AppTextFormFields(controller: controller.passwordTextController,hint: "Password").paddingOnly(bottom: Dimens.paddingMedium),
          Align(alignment: Alignment.centerRight, child: TextButton(
            onPressed: controller.forgotPassword,
            child: const AppText.small('Forgot Password'),
          ),),
          ElevatedButton(
           onPressed: controller.login,
           child: const AppText('Login'),
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppText.small("Don't have an account ?"),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: controller.goToSignUp,
                child: const AppText.small('SignUp'),
              ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: Dimens.margin),
    );
  }
}
