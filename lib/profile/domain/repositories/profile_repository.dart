// lib/src/profile/domain/repositories/profile_repository.dart

import 'package:chatapp/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<ProfileEntity?> fetchUserProfile();
}
