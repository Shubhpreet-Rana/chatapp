// lib/src/profile/presentation/managers/profile_controller.dart
import 'package:get/get.dart';

import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileController extends GetxController{
  final ProfileRepository profileRepository;

  ProfileController({required this.profileRepository});

  Future<ProfileEntity?> fetchUserProfile() async {
    return profileRepository.fetchUserProfile();
  }
}
