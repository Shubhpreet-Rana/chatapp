// lib/src/authentication/presentation/screens/signup_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/entities/user_entity.dart';
import '../controller/authentication_manager.dart';
class SignupScreen extends GetView<AuthenticationController> {

 const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                UserEntity? user = await controller.signup("newuser", "newuser@example.com", "newpassword");
                // Handle user signup, e.g., navigate to another screen
              },
              child: Text('Signup'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
               bool user = await controller.exists("","newuser@example.com");
                // Handle user signup, e.g., navigate to another screen
              },
              child: Text('Exists'),
            ),
          ),
        ],
      ),
    );
  }
}
