// lib/src/authentication/presentation/screens/login_screen.dart

import 'package:chatapp/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/entities/user_entity.dart';
import '../controller/authentication_manager.dart';
class LoginScreen extends GetView<AuthenticationController> {

  LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            UserEntity? user = await controller.login("newuser@example.com", "newpassword");
            if (user!=null) Get.toNamed(AppRoutes.signupPage,arguments: "Arguments");
            // Handle user login, e.g., navigate to another screen
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
