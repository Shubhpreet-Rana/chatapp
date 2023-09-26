// lib/src/authentication/presentation/screens/login_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          TextFormField(controller: controller.emailTextController,decoration:InputDecoration(hintText: "Email"),),
          TextFormField(controller: controller.passwordTextController,decoration:InputDecoration(hintText: "Password"),),
          Center(
            child: ElevatedButton(
              onPressed: controller.login,
              child: const Text('Login'),
            ),
          ),  Center(
            child: ElevatedButton(
              onPressed: controller.goToSignUp,
              child: const Text('SIgnUp'),
            ),
          ),
        ],
      ),
    );
  }
}
