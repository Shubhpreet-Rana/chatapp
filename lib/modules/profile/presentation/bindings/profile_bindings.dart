import 'package:get/get.dart';

import '../../data/data_sources/data_sources/dio/profile_data_source.dart';
import '../../data/repositories/profile_data_repositary.dart';
import '../controller/profile_controller.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ProfileController(
        profileRepository:
            ProfileDataRepository(profileDataSource: ProfileDataSource()),
      ),
    );
  }
}
