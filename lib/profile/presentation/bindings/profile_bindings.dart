import 'package:chatapp/profile/data/data_sources/data_sources/dio/profile_data_source.dart';
import 'package:chatapp/profile/data/repositories/profile_data_repositary.dart';
import 'package:chatapp/profile/presentation/controller/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileController(profileRepository: ProfileDataRepository(profileDataSource: ProfileDataSource())));
  }
}