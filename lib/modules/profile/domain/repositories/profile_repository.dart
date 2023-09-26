// lib/src/profile/domain/repositories/profile_repository.dart

import '../entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<ProfileEntity?> fetchUserProfile();
}
