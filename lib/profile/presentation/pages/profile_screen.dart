// lib/src/profile/presentation/screens/profile_screen.dart

import 'package:chatapp/profile/domain/entities/profile_entity.dart';
import 'package:chatapp/profile/presentation/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProfileScreen extends GetView<ProfileController> {


  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: FutureBuilder<ProfileEntity?>(
        future: controller.fetchUserProfile(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            final userModel = snapshot.data!;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Username: ${userModel.user.username}'),
                  Text('Email: ${userModel.user.email}'),
                  // Additional UI components for user profile
                ],
              ),
            );
          } else {
            return Text('No user data available.');
          }
        },
      ),
    );
  }
}
