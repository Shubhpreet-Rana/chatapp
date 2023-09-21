import 'package:chatapp/authentication/data/data_sources/firebase/authentication_data_source.dart';
import 'package:chatapp/authentication/data/repositories/authentication_data_repositary.dart';
import 'package:chatapp/authentication/domain/repositories/authentication_repositary.dart';
import 'package:chatapp/authentication/presentation/controller/authentication_manager.dart';
import 'package:get/get.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthenticationController(
        authenticationRepository: AuthenticationDataRepository(
            authenticationDataSource: AuthenticationDataSourceFirebase())));}
}
