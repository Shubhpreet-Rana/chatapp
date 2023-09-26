import 'package:get/get.dart';

import '../../data/data_sources/firebase/authentication_data_source.dart';
import '../../data/repositories/authentication_data_repositary.dart';
import '../controller/authentication_manager.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthenticationController(
        authenticationRepository: AuthenticationDataRepository(
            authenticationDataSource: AuthenticationDataSourceFirebase()),
      ),
    );
  }
}
