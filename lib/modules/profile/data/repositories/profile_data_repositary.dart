

import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/profile_repository.dart';
import '../data_sources/data_sources/dio/profile_data_source.dart';

class ProfileDataRepository implements ProfileRepository {
  final ProfileDataSource profileDataSource;

  ProfileDataRepository({required this.profileDataSource});

  @override
  Future<ProfileEntity?> fetchUserProfile() async {
    try {
      // Call the Retrofit-generated data source method to fetch user profile data.
      final userProfileData = await profileDataSource.fetchUserProfile();

      // Create a ProfileEntity using the retrieved data and return it.
      return userProfileData!.toEntity();
    } catch (error) {
      throw Exception('Failed to fetch user profile data: $error');
    }
  }
}
